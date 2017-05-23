.class public interface abstract Lcom/peel/ITransmitCallback;
.super Ljava/lang/Object;
.source "ITransmitCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peel/ITransmitCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/peel/SmartIrFailure;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
