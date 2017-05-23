.class public Landroid/app/RestrictedPackageManager;
.super Ljava/lang/Object;
.source "RestrictedPackageManager.java"


# static fields
.field public static final NETWORK_POLICY_NONE:I = 0x0

.field public static final NETWORK_POLICY_RESTRICT_ALL:I = 0x2

.field public static final NETWORK_POLICY_RESTRICT_BACKGROUND:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "restricted_packages"

.field private static final TAG:Ljava/lang/String; = "RestrictedPackageManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/app/IRestrictedPackageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IRestrictedPackageService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IRestrictedPackageService;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/app/RestrictedPackageManager;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    .line 36
    return-void
.end method

.method private isAppRestrictBackground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 146
    iget-object v1, p0, Landroid/app/RestrictedPackageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 147
    .local v0, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 151
    iget-object v1, p0, Landroid/app/RestrictedPackageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 152
    .local v0, "npm":Landroid/net/NetworkPolicyManager;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 154
    return-void

    .line 152
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRestrictedPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "restrictions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/RestrictedPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/app/IRestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestrictedPackageManager"

    const-string v2, "RemoteException in isPackageRestricted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getUidNetwrokPloicy(II)I
    .locals 4
    .param p1, "restrictions"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/app/RestrictedPackageManager;->isPackageRestricted(II)Z

    move-result v0

    .line 163
    .local v0, "restrictedAll":Z
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 164
    if-eqz v0, :cond_1

    move v1, v2

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/RestrictedPackageManager;->isAppRestrictBackground(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    if-ne p1, v2, :cond_0

    .line 171
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isPackageRestricted(II)Z
    .locals 3
    .param p1, "restrictions"    # I
    .param p2, "uid"    # I

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p2, p1, v2}, Lcom/android/internal/app/IRestrictedPackageService;->isUidRestricted(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestrictedPackageManager"

    const-string v2, "RemoteException in isPackageRestricted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageRestricted(ILjava/lang/String;)Z
    .locals 3
    .param p1, "restrictions"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p2, p1, v2}, Lcom/android/internal/app/IRestrictedPackageService;->isPackageRestricted(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestrictedPackageManager"

    const-string v2, "RemoteException in isPackageRestricted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resumeStoppedPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/app/IRestrictedPackageService;->resumeStoppedPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestrictedPackageManager"

    const-string v2, "RemoteException in resumeStoppedPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPackageRestricted(IIZ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "restrictions"    # I
    .param p3, "restricted"    # Z

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/app/RestrictedPackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "pkgList":[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 66
    move-object v6, v10

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v1, v6, v8

    .line 67
    .local v1, "packageName":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IRestrictedPackageService;->setPackageRestricted(Ljava/lang/String;IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "pkgList":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 72
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictedPackageManager"

    const-string v2, "RemoteException in setPackageRestricted"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictions"    # I
    .param p4, "restricted"    # Z

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IRestrictedPackageService;->setPackageRestricted(Ljava/lang/String;IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v6

    .line 85
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictedPackageManager"

    const-string v1, "RemoteException in setPackageRestricted"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPackageRestricted(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # I
    .param p3, "restricted"    # Z

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Landroid/app/RestrictedPackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 45
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_0

    .line 46
    iget-object v0, p0, Landroid/app/RestrictedPackageManager;->mService:Lcom/android/internal/app/IRestrictedPackageService;

    iget v2, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IRestrictedPackageService;->setPackageRestricted(Ljava/lang/String;IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v6

    .line 50
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictedPackageManager"

    const-string v1, "RemoteException in setPackageRestricted"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 52
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "RestrictedPackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUidNetwrokPloicy(III)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "restrictions"    # I
    .param p3, "policy"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    .line 183
    if-ne p3, v3, :cond_1

    .line 184
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/RestrictedPackageManager;->setPackageRestricted(IIZ)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-ne p3, v0, :cond_2

    .line 186
    invoke-direct {p0, p1, v0}, Landroid/app/RestrictedPackageManager;->setAppRestrictBackground(IZ)V

    .line 187
    invoke-virtual {p0, p2, p1}, Landroid/app/RestrictedPackageManager;->isPackageRestricted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p1, p2, v1}, Landroid/app/RestrictedPackageManager;->setPackageRestricted(IIZ)V

    goto :goto_0

    .line 190
    :cond_2
    if-nez p3, :cond_0

    .line 191
    invoke-virtual {p0, p2, p1}, Landroid/app/RestrictedPackageManager;->isPackageRestricted(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p0, p1, p2, v1}, Landroid/app/RestrictedPackageManager;->setPackageRestricted(IIZ)V

    .line 194
    :cond_3
    invoke-direct {p0, p1}, Landroid/app/RestrictedPackageManager;->isAppRestrictBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1, v1}, Landroid/app/RestrictedPackageManager;->setAppRestrictBackground(IZ)V

    goto :goto_0

    .line 199
    :cond_4
    if-ne p2, v3, :cond_0

    .line 200
    if-ne p3, v3, :cond_5

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/RestrictedPackageManager;->setPackageRestricted(IIZ)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
