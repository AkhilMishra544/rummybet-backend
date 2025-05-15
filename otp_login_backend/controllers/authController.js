const axios = require('axios');
const User = require('../models/User');

const sendOTP = async (req, res) => {
  const { phone } = req.body;
  const otp = Math.floor(100000 + Math.random() * 900000);
  const user = await User.findOneAndUpdate(
    { phone },
    { otp, otpExpire: new Date(Date.now() + 5 * 60 * 1000) },
    { upsert: true, new: true }
  );

  try {
    await axios.get(`https://www.fast2sms.com/dev/bulkV2?authorization=${process.env.FAST2SMS_API_KEY}&variables_values=${otp}&route=otp&numbers=${phone}`);
    return res.json({ success: true, message: 'OTP sent successfully' });
  } catch (err) {
    return res.status(500).json({ success: false, message: 'Failed to send OTP' });
  }
};

const verifyOTP = async (req, res) => {
  const { phone, otp } = req.body;
  const user = await User.findOne({ phone });

  if (!user || user.otp !== otp || new Date() > user.otpExpire) {
    return res.status(400).json({ success: false, message: 'Invalid or expired OTP' });
  }

  const isAdmin = phone === process.env.ADMIN_PHONE;
  return res.json({ success: true, message: 'Login successful', isAdmin });
};

module.exports = { sendOTP, verifyOTP };
