
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
const fast2sms = require('fast-two-sms');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(bodyParser.json());

// MongoDB connection
mongoose.connect('mongodb://localhost:27017/rummyotp', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

const UserSchema = new mongoose.Schema({
    phone: String,
    otp: String,
    createdAt: { type: Date, default: Date.now, expires: 300 } // expires in 5 mins
});
const User = mongoose.model('User', UserSchema);

// Send OTP
app.post('/api/send-otp', async (req, res) => {
    const { phone } = req.body;
    const otp = Math.floor(100000 + Math.random() * 900000).toString();

    await User.findOneAndUpdate({ phone }, { otp, createdAt: new Date() }, { upsert: true });

    const result = await fast2sms.sendMessage({
        authorization: "YOUR_FAST2SMS_API_KEY",
        message: `Your OTP is ${otp}`,
        numbers: [phone]
    });

    res.send({ success: true, otp });
});

// Verify OTP
app.post('/api/verify-otp', async (req, res) => {
    const { phone, otp } = req.body;

    const user = await User.findOne({ phone, otp });
    if (user) return res.send({ success: true, message: "OTP verified" });

    res.send({ success: false, message: "Invalid OTP" });
});

// Admin Login
app.post('/api/admin-login', (req, res) => {
    const { username, password } = req.body;
    if (username === "admin" && password === "admin123") {
        return res.send({ success: true, token: "ADMIN_TOKEN" });
    }
    res.send({ success: false, message: "Invalid credentials" });
});

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
