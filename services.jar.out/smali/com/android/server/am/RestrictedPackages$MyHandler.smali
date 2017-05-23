.class final Lcom/android/server/am/RestrictedPackages$MyHandler;
.super Landroid/os/Handler;
.source "RestrictedPackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestrictedPackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RestrictedPackages;


# direct methods
.method public constructor <init>(Lcom/android/server/am/RestrictedPackages;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/am/RestrictedPackages$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackages;

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackages$MyHandler;->this$0:Lcom/android/server/am/RestrictedPackages;

    # invokes: Lcom/android/server/am/RestrictedPackages;->saveAllSettings()V
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages;->access$000(Lcom/android/server/am/RestrictedPackages;)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x238c
        :pswitch_0
    .end packed-switch
.end method
