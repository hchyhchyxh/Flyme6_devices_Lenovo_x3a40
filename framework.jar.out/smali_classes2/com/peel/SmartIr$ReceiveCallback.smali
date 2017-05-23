.class public interface abstract Lcom/peel/SmartIr$ReceiveCallback;
.super Ljava/lang/Object;
.source "SmartIr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiveCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/peel/SmartIrFailure;)V
.end method

.method public abstract onSuccess(ILjava/lang/String;)V
.end method
