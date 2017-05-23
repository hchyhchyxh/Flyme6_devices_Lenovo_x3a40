.class final Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;
.super Lcom/peel/IReceiveCallback$Stub;
.source "SmartIrGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIrGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReceiveManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peel/SmartIrGlobal;


# direct methods
.method private constructor <init>(Lcom/peel/SmartIrGlobal;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;->this$0:Lcom/peel/SmartIrGlobal;

    invoke-direct {p0}, Lcom/peel/IReceiveCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/peel/SmartIrGlobal;Lcom/peel/SmartIrGlobal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/peel/SmartIrGlobal;
    .param p2, "x1"    # Lcom/peel/SmartIrGlobal$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;-><init>(Lcom/peel/SmartIrGlobal;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/peel/SmartIrFailure;)V
    .locals 2
    .param p1, "failure"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;->this$0:Lcom/peel/SmartIrGlobal;

    const/4 v1, 0x1

    # invokes: Lcom/peel/SmartIrGlobal;->handleReceiveErrorEvent(ILcom/peel/SmartIrFailure;)V
    invoke-static {v0, v1, p1}, Lcom/peel/SmartIrGlobal;->access$500(Lcom/peel/SmartIrGlobal;ILcom/peel/SmartIrFailure;)V

    .line 342
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 2
    .param p1, "frequency"    # I
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;->this$0:Lcom/peel/SmartIrGlobal;

    const/4 v1, 0x2

    # invokes: Lcom/peel/SmartIrGlobal;->handleReceiveSucessEvent(IILjava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Lcom/peel/SmartIrGlobal;->access$400(Lcom/peel/SmartIrGlobal;IILjava/lang/String;)V

    .line 338
    return-void
.end method
