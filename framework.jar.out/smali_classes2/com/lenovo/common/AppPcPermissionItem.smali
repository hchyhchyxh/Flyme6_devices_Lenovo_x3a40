.class public Lcom/lenovo/common/AppPcPermissionItem;
.super Ljava/lang/Object;
.source "AppPcPermissionItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/common/AppPcPermissionItem$Code;,
        Lcom/lenovo/common/AppPcPermissionItem$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_MODIFY_DISABLE:I = 0x0

.field public static final PERMISSION_MODIFY_ENABLE:I = 0x1

.field public static final PERMISSION_NAME_APP_LOCK:Ljava/lang/String; = "lenovo.permission.APP_LOCK"

.field public static final PERMISSION_NAME_EXIT_APP:Ljava/lang/String; = "com.lenovo.pemission.exit_app"

.field public static final PERMISSION_NAME_SEND_MMS:Ljava/lang/String; = "lenovo.permission.SEND_MMS"


# instance fields
.field private mBackgroundStatus:I

.field private final mCode:I

.field private final mModify:I

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/lenovo/common/AppPcPermissionItem$1;

    invoke-direct {v0}, Lcom/lenovo/common/AppPcPermissionItem$1;-><init>()V

    sput-object v0, Lcom/lenovo/common/AppPcPermissionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mPackageName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mModify:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lenovo/common/AppPcPermissionItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/lenovo/common/AppPcPermissionItem$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 169
    iput-object p1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mPackageName:Ljava/lang/String;

    .line 170
    invoke-static {p2}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    .line 171
    iput v1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mModify:I

    .line 172
    iput p2, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "modify"    # I
    .param p5, "backgroundStatus"    # I

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 148
    iput-object p1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mPackageName:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    .line 150
    iput p3, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    .line 151
    iput p4, p0, Lcom/lenovo/common/AppPcPermissionItem;->mModify:I

    .line 152
    iget-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    .line 153
    iput p5, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isSysApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 156
    iput-object p1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mPackageName:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mModify:I

    .line 159
    iget-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    .line 161
    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->getControllableSystemAppDefaultStatus(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    .line 166
    :goto_0
    iput v1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 167
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->getDefaultStatus(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    goto :goto_0
.end method

.method public static translateBackgroundStatus(Ljava/lang/String;)I
    .locals 3
    .param p0, "extra_data_1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    .local v0, "value":I
    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "value":I
    :catch_0
    move-exception v2

    move v0, v1

    .line 126
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundStatus()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    return v0
.end method

.method public getModify()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mModify:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    return v0
.end method

.method public setBackgroundStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 200
    const/4 p1, 0x1

    .line 202
    :cond_0
    iput p1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    .line 204
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    .line 196
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mModify:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/lenovo/common/AppPcPermissionItem;->mBackgroundStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-void
.end method
