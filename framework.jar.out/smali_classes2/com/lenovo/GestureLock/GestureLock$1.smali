.class Lcom/lenovo/GestureLock/GestureLock$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "GestureLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/GestureLock/GestureLock;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/GestureLock/GestureLock;


# direct methods
.method constructor <init>(Lcom/lenovo/GestureLock/GestureLock;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock$1;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$1;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    # invokes: Lcom/lenovo/GestureLock/GestureLock;->update()V
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$000(Lcom/lenovo/GestureLock/GestureLock;)V

    .line 84
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 79
    return-void
.end method
