.class Lcom/java/rummybors/util/Utils$Task$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/java/rummybors/util/Utils$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/java/rummybors/util/Utils$Task;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/java/rummybors/util/Utils$Task;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lcom/java/rummybors/util/Utils$Task$1;->this$0:Lcom/java/rummybors/util/Utils$Task;

    iput-object p2, p0, Lcom/java/rummybors/util/Utils$Task$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/java/rummybors/util/Utils$Task$1;->this$0:Lcom/java/rummybors/util/Utils$Task;

    invoke-static {v0}, Lcom/java/rummybors/util/Utils$Task;->access$100(Lcom/java/rummybors/util/Utils$Task;)Lcom/java/rummybors/util/Utils$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/java/rummybors/util/Utils$Task$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/java/rummybors/util/Utils$Callback;->onCall(Ljava/lang/Object;)V

    return-void
.end method
