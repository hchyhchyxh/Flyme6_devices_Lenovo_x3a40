.class public interface abstract Lcom/peel/IReceiveCallback;
.super Ljava/lang/Object;
.source "IReceiveCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peel/IReceiveCallback$Stub;
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

.method public abstract onSuccess(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
