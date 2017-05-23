.class public Lcom/lenovo/common/SecurityManagerUtils;
.super Ljava/lang/Object;
.source "SecurityManagerUtils.java"


# static fields
.field private static final FEATURE_SUPPORTED:Z = true

.field private static final SERVICE_NAME:Ljava/lang/String; = "lenovopermission"

.field public static final TAG:Ljava/lang/String; = "SecurityManagerUtils"

.field private static sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppLock(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "caller"    # Landroid/app/IApplicationThread;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 97
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkAppLock(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 106
    .end local v1    # "mAppPcService":Lcom/android/internal/app/IAppPcService;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-object p1

    .line 100
    .restart local v1    # "mAppPcService":Lcom/android/internal/app/IAppPcService;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAppLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppLockForTask(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v2

    .line 136
    .local v2, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v2, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/app/IAppPcService;->checkAppLockForTask(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SecurityManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppLockForTask"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppOpsPermission(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "perm"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 113
    :cond_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, "opCode":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 117
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 118
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 120
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, p0, p1, v4}, Lcom/android/internal/app/IAppPcService;->checkOperationAsync(ILjava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 123
    const/4 v3, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SecurityManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppOpsPermission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callerApp"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 83
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    :goto_0
    return v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAutoStart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkIncomingCall(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 57
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/app/IAppPcService;->checkIncomingCall(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 65
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIncomingCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getServiceInstance()Lcom/android/internal/app/IAppPcService;
    .locals 2

    .prologue
    .line 48
    sget-object v1, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    if-nez v1, :cond_0

    .line 49
    const-string v1, "lenovopermission"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppPcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    sput-object v1, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    .line 52
    :cond_0
    sget-object v1, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    return-object v1
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static pmInstallApkWithCode(IILjava/lang/String;)I
    .locals 5
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 70
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->pmInstallApkWithCode(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 78
    :goto_0
    return v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pmInstallApkWithCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const v2, 0xffff

    goto :goto_0
.end method
