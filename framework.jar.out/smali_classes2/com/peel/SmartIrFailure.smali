.class public Lcom/peel/SmartIrFailure;
.super Ljava/lang/Object;
.source "SmartIrFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/peel/SmartIrFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_RECEIVE_CANCELED:Ljava/lang/String; = "Receiving canceled"

.field public static final MSG_RECEIVE_CORRUPT_DATA:Ljava/lang/String; = "Receiving corrupt data"

.field public static final MSG_RECEIVE_HAL_PROBLEM:Ljava/lang/String; = "Receiving HAL problem"

.field public static final MSG_RECEIVE_TIMEOUT:Ljava/lang/String; = "Receiving timeout"

.field public static final MSG_TRANSMIT_CANCELED:Ljava/lang/String; = "Transmit canceled"

.field public static final MSG_TRANSMIT_HAL_PROBLEM:Ljava/lang/String; = "Transmit HAL problem"

.field public static final MSG_TRANSMIT_MODE_UNSUPPORTED:Ljava/lang/String; = "Transmit mode unsupported"

.field public static final STATUS_RECEIVE_CANCELED:I = 0x68

.field public static final STATUS_RECEIVE_CORRUPT_DATA:I = 0x67

.field public static final STATUS_RECEIVE_HAL_PROBLEM:I = 0x65

.field public static final STATUS_RECEIVE_TIMEOUT:I = 0x66

.field public static final STATUS_TRANSMIT_CANCELED:I = 0x3

.field public static final STATUS_TRANSMIT_HAL_PROBLEM:I = 0x1

.field public static final STATUS_TRANSMIT_MODE_UNSUPPORTED:I = 0x2


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/peel/SmartIrFailure$1;

    invoke-direct {v0}, Lcom/peel/SmartIrFailure$1;-><init>()V

    sput-object v0, Lcom/peel/SmartIrFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/peel/SmartIrFailure;->mStatusCode:I

    .line 35
    iput-object p2, p0, Lcom/peel/SmartIrFailure;->mMessage:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/peel/SmartIrFailure;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/peel/SmartIrFailure;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/peel/SmartIrFailure;->mStatusCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/peel/SmartIrFailure;->mStatusCode:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/peel/SmartIrFailure;->mMessage:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/peel/SmartIrFailure;->mMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "mCode"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/peel/SmartIrFailure;->mStatusCode:I

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/peel/SmartIrFailure;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/peel/SmartIrFailure;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
