.class public Landroid/app/RestrictedPackageInfo;
.super Ljava/lang/Object;
.source "RestrictedPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/RestrictedPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESTRICT_BACKGROUND_RUNNING:I = 0x1

.field public static final RESTRICT_MOBILEDATA_ACCESS:I = 0x4

.field public static final RESTRICT_WIFI_ACCESS:I = 0x2


# instance fields
.field public mForceCleaned:Z

.field public mPackageName:Ljava/lang/String;

.field public mRestrictions:I

.field public mStopped:Z

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Landroid/app/RestrictedPackageInfo$1;

    invoke-direct {v0}, Landroid/app/RestrictedPackageInfo$1;-><init>()V

    sput-object v0, Landroid/app/RestrictedPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/RestrictedPackageInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/app/RestrictedPackageInfo;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 68
    iget v0, p1, Landroid/app/RestrictedPackageInfo;->mUid:I

    iput v0, p0, Landroid/app/RestrictedPackageInfo;->mUid:I

    .line 69
    iget v0, p1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    iput v0, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    .line 70
    iget-boolean v0, p1, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    iput-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    .line 71
    iget-boolean v0, p1, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    iput-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RestrictedPackageInfo;->mUid:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/RestrictedPackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/RestrictedPackageInfo$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/RestrictedPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictions"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroid/app/RestrictedPackageInfo;->mUid:I

    .line 44
    iput p3, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    .line 45
    iput-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    .line 46
    iput-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/RestrictedPackageInfo;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/app/RestrictedPackageInfo;

    iget-object v1, p0, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/app/RestrictedPackageInfo;->mUid:I

    iget v3, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    invoke-direct {v0, v1, v2, v3}, Landroid/app/RestrictedPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 78
    .local v0, "clone":Landroid/app/RestrictedPackageInfo;
    iget-boolean v1, p0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    iput-boolean v1, v0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    .line 79
    iget-boolean v1, p0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    iput-boolean v1, v0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    .line 80
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/RestrictedPackageInfo;->clone()Landroid/app/RestrictedPackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isBackgroundRunningRestricted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    iget v1, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileDataAccessRestricted()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkAccessRestricted()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/lit8 v0, v0, 0x6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiAccessRestricted()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestrictedPackageInfo { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/RestrictedPackageInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restrictions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " force_cleaned:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Landroid/app/RestrictedPackageInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v1, v2

    .line 111
    goto :goto_1
.end method
