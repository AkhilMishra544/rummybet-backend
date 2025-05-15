.class Lcom/java/rummybors/util/BatteryReceiver$1;
.super Ljava/lang/Object;
.source "BatteryReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/java/rummybors/util/BatteryReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/java/rummybors/util/BatteryReceiver;


# direct methods
.method constructor <init>(Lcom/java/rummybors/util/BatteryReceiver;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/java/rummybors/util/BatteryReceiver$1;->this$0:Lcom/java/rummybors/util/BatteryReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
