.class final Lcom/peel/SmartIrFailure$1;
.super Ljava/lang/Object;
.source "SmartIrFailure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIrFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/peel/SmartIrFailure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/peel/SmartIrFailure;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Lcom/peel/SmartIrFailure;

    invoke-direct {v0, p1}, Lcom/peel/SmartIrFailure;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/peel/SmartIrFailure$1;->createFromParcel(Landroid/os/Parcel;)Lcom/peel/SmartIrFailure;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/peel/SmartIrFailure;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lcom/peel/SmartIrFailure;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/peel/SmartIrFailure$1;->newArray(I)[Lcom/peel/SmartIrFailure;

    move-result-object v0

    return-object v0
.end method
