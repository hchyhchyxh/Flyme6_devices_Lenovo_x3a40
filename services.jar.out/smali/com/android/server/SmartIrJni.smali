.class public Lcom/android/server/SmartIrJni;
.super Ljava/lang/Object;
.source "SmartIrJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ReceiveCallback_onFailure(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 27
    invoke-static {p1}, Lcom/android/server/SmartIrService;->receiveCallbackOnFailure(I)V

    .line 28
    return-void
.end method

.method public ReceiveCallback_onSuccess(ILjava/lang/String;)V
    .locals 0
    .param p1, "frequency"    # I
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/android/server/SmartIrService;->receiveCallbackOnSuccess(ILjava/lang/String;)V

    .line 24
    return-void
.end method

.method public TransmitCallback_onFailure(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 35
    invoke-static {p1}, Lcom/android/server/SmartIrService;->transmitCallbackOnFailure(I)V

    .line 36
    return-void
.end method

.method public TransmitCallback_onSuccess()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/android/server/SmartIrService;->transmitCallbackOnSuccess()V

    .line 32
    return-void
.end method

.method public native halCancelContinuousTransmit(J)I
.end method

.method public native halCancelReceiving(J)I
.end method

.method public native halOpen()J
.end method

.method public native halReceive(JI)I
.end method

.method public native halTransmit(JILjava/lang/String;Ljava/lang/String;III)I
.end method
