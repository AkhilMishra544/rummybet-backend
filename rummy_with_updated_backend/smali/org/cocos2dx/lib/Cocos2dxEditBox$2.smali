.class Lorg/cocos2dx/lib/Cocos2dxEditBox$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBox;->showNative(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$confirmHold:Z

.field final synthetic val$confirmType:Ljava/lang/String;

.field final synthetic val$defaultValue:Ljava/lang/String;

.field final synthetic val$inputType:Ljava/lang/String;

.field final synthetic val$isMultiline:Z

.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$defaultValue:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$maxLength:I

    iput-boolean p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$isMultiline:Z

    iput-boolean p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$confirmHold:Z

    iput-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$confirmType:Ljava/lang/String;

    iput-object p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$inputType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 427
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->access$1300()Lorg/cocos2dx/lib/Cocos2dxEditBox;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$defaultValue:Ljava/lang/String;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$maxLength:I

    iget-boolean v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$isMultiline:Z

    iget-boolean v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$confirmHold:Z

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$confirmType:Ljava/lang/String;

    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox$2;->val$inputType:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->access$1400(Lorg/cocos2dx/lib/Cocos2dxEditBox;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
