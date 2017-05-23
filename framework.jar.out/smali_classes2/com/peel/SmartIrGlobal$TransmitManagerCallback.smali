.class final Lcom/peel/SmartIrGlobal$TransmitManagerCallback;
.super Lcom/peel/ITransmitCallback$Stub;
.source "SmartIrGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIrGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransmitManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peel/SmartIrGlobal;


# direct methods
.method private constructor <init>(Lcom/peel/SmartIrGlobal;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/peel/SmartIrGlobal$TransmitManagerCallback;->this$0:Lcom/peel/SmartIrGlobal;

    invoke-direct {p0}, Lcom/peel/ITransmitCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/peel/SmartIrGlobal;Lcom/peel/SmartIrGlobal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/peel/SmartIrGlobal;
    .param p2, "x1"    # Lcom/peel/SmartIrGlobal$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal$TransmitManagerCallback;-><init>(Lcom/peel/SmartIrGlobal;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/peel/SmartIrFailure;)V
    .locals 2
    .param p1, "failure"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$TransmitManagerCallback;->this$0:Lcom/peel/SmartIrGlobal;

    const/4 v1, 0x1

    # invokes: Lcom/peel/SmartIrGlobal;->handleTransmitFailureEvent(ILcom/peel/SmartIrFailure;)V
    invoke-static {v0, v1, p1}, Lcom/peel/SmartIrGlobal;->access$200(Lcom/peel/SmartIrGlobal;ILcom/peel/SmartIrFailure;)V

    .line 202
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$TransmitManagerCallback;->this$0:Lcom/peel/SmartIrGlobal;

    const/4 v1, 0x2

    # invokes: Lcom/peel/SmartIrGlobal;->handleTransmitSucessEvent(I)V
    invoke-static {v0, v1}, Lcom/peel/SmartIrGlobal;->access$100(Lcom/peel/SmartIrGlobal;I)V

    .line 197
    return-void
.end method
