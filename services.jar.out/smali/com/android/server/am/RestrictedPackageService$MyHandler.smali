.class final Lcom/android/server/am/RestrictedPackageService$MyHandler;
.super Landroid/os/Handler;
.source "RestrictedPackageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestrictedPackageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RestrictedPackageService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/RestrictedPackageService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/am/RestrictedPackageService$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackageService;

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackageService;

    # getter for: Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackageService;->access$000(Lcom/android/server/am/RestrictedPackageService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackageService;

    # getter for: Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackageService;->access$100(Lcom/android/server/am/RestrictedPackageService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackageService$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackageService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    # invokes: Lcom/android/server/am/RestrictedPackageService;->handleBroadcast(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/server/am/RestrictedPackageService;->access$200(Lcom/android/server/am/RestrictedPackageService;Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackageService;

    # invokes: Lcom/android/server/am/RestrictedPackageService;->setupRules()V
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackageService;->access$300(Lcom/android/server/am/RestrictedPackageService;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
