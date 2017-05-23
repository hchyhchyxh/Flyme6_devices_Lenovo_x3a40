.class final Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;
.super Landroid/os/Handler;
.source "SmartIrGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIrGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveCallbackDelegate"
.end annotation


# instance fields
.field private final mListener:Lcom/peel/SmartIr$ReceiveCallback;


# direct methods
.method public constructor <init>(Lcom/peel/SmartIr$ReceiveCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/peel/SmartIr$ReceiveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 363
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 364
    iput-object p1, p0, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->mListener:Lcom/peel/SmartIr$ReceiveCallback;

    .line 365
    return-void

    .line 363
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public getListener()Lcom/peel/SmartIr$ReceiveCallback;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->mListener:Lcom/peel/SmartIr$ReceiveCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 394
    :pswitch_0
    iget-object v1, p0, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->mListener:Lcom/peel/SmartIr$ReceiveCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/peel/SmartIrFailure;

    invoke-interface {v1, v0}, Lcom/peel/SmartIr$ReceiveCallback;->onFailure(Lcom/peel/SmartIrFailure;)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object v1, p0, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->mListener:Lcom/peel/SmartIr$ReceiveCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/peel/SmartIr$ReceiveCallback;->onSuccess(ILjava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendReceiveErrorEvent(ILcom/peel/SmartIrFailure;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "failure"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 380
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 381
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 382
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    invoke-virtual {p0, v0}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 384
    return-void
.end method

.method public sendReceiveSucessEvent(IILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 373
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 374
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 375
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    invoke-virtual {p0, v0}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 377
    return-void
.end method
