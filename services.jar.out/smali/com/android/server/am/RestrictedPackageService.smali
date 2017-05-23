.class public Lcom/android/server/am/RestrictedPackageService;
.super Lcom/android/internal/app/IRestrictedPackageService$Stub;
.source "RestrictedPackageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RestrictedPackageService$PackageRunningState;,
        Lcom/android/server/am/RestrictedPackageService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_CLEAN:Ljava/lang/String; = "com.android.server.am.clean_restricted_apps"

.field private static final BACKGROUND_CLEAN_DELAY:I = 0xea60

.field private static final BACKGROUND_CLEAN_INTERVAL:I = 0x927c0

.field private static final BATTERY_CONSUMING:I = 0x0

.field private static final DATA_CONSUMING:I = 0x1

.field public static final DEBUG:Z = true

.field private static final MOBILE:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2328

.field private static final MSG_SETUP_RULES:I = 0x2329

.field private static final NOTIFICATION_MIN_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "RestrictedPackageService"

.field private static final WIFI:I = 0x1


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoCleanIntent:Landroid/app/PendingIntent;

.field private mCollected:Z

.field private mContext:Landroid/content/Context;

.field private mExcludeRecentlyUsedApps:Z

.field private final mHandler:Lcom/android/server/am/RestrictedPackageService$MyHandler;

.field private mHighPowerLocationApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationRealtime:J

.field private mLastReportedPackage:Ljava/lang/String;

.field private mNotifications:[Landroid/service/notification/StatusBarNotification;

.field private mPower:Landroid/os/PowerManager;

.field private final mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

.field private mRunningPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestrictedPackageService$PackageRunningState;",
            ">;"
        }
    .end annotation
.end field

.field private mShuttingDown:Z

.field private mSystemReady:Z

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/PowerManagerInternal$WakeLockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Lcom/android/internal/app/IRestrictedPackageService$Stub;-><init>()V

    .line 115
    iput-boolean v2, p0, Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/am/RestrictedPackageService;->mExcludeRecentlyUsedApps:Z

    .line 436
    const-wide/32 v0, -0x36ee80

    iput-wide v0, p0, Lcom/android/server/am/RestrictedPackageService;->mLastNotificationRealtime:J

    .line 437
    iput-object v3, p0, Lcom/android/server/am/RestrictedPackageService;->mLastReportedPackage:Ljava/lang/String;

    .line 821
    iput-boolean v2, p0, Lcom/android/server/am/RestrictedPackageService;->mCollected:Z

    .line 822
    iput-object v3, p0, Lcom/android/server/am/RestrictedPackageService;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .line 823
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRunningPackages:Ljava/util/ArrayList;

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mWakeLocks:Ljava/util/List;

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mHighPowerLocationApps:Ljava/util/List;

    .line 142
    const-string v0, "RestrictedPackageService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object p1, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 144
    new-instance v0, Lcom/android/server/am/RestrictedPackages;

    invoke-direct {v0, p2}, Lcom/android/server/am/RestrictedPackages;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    .line 145
    new-instance v0, Lcom/android/server/am/RestrictedPackageService$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/RestrictedPackageService$MyHandler;-><init>(Lcom/android/server/am/RestrictedPackageService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mHandler:Lcom/android/server/am/RestrictedPackageService$MyHandler;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/RestrictedPackageService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackageService;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/RestrictedPackageService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackageService;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/RestrictedPackageService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackageService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/am/RestrictedPackageService;->handleBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/RestrictedPackageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackageService;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackageService;->setupRules()V

    return-void
.end method

.method private buildAppManagerIntent(I)Landroid/content/Intent;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 515
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lenovo.powersetting"

    const-string v3, "com.lenovo.powersetting.apprestriction.appmanager.AppRestrictionActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 521
    :cond_0
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    return-object v0

    .line 517
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 518
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lenovo.powersetting"

    const-string v3, "com.lenovo.powersetting.apprestriction.appmanager.AppRestrictionActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private cleanUserPackages(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 770
    const-string v5, "RestrictedPackageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUserPackages "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v5, v8, p1, v8}, Lcom/android/server/am/RestrictedPackages;->getRestrictedPackages(IIZ)Ljava/util/List;

    move-result-object v1

    .line 775
    .local v1, "aliveRestrictedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 778
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 779
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/RestrictedPackageService;->filterOutDefaultSmsApplication(Ljava/util/List;I)I

    move-result v0

    .line 783
    :cond_0
    if-lez v0, :cond_1

    iget-boolean v5, p0, Lcom/android/server/am/RestrictedPackageService;->mExcludeRecentlyUsedApps:Z

    if-eqz v5, :cond_1

    .line 784
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/RestrictedPackageService;->filterOutRecentlyUsedPackages(Ljava/util/List;I)I

    move-result v0

    .line 788
    :cond_1
    const/4 v3, 0x0

    .line 789
    .local v3, "killedCount":I
    if-lez v0, :cond_3

    .line 790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 791
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RestrictedPackageInfo;

    .line 792
    .local v4, "pi":Landroid/app/RestrictedPackageInfo;
    iget-boolean v5, v4, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    if-eqz v5, :cond_2

    .line 793
    const-string v5, "RestrictedPackageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forcestop force-cleaned package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 795
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 796
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 797
    add-int/lit8 v3, v3, 0x1

    .line 790
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 803
    .end local v2    # "i":I
    .end local v4    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_3
    if-lez v0, :cond_5

    .line 804
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackageService;->collectPackageRunningState()V

    .line 805
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 806
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RestrictedPackageInfo;

    .line 807
    .restart local v4    # "pi":Landroid/app/RestrictedPackageInfo;
    iget-object v5, v4, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/android/server/am/RestrictedPackageService;->isPackageClearableByRunningState(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 808
    const-string v5, "RestrictedPackageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forcestop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 810
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 811
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 812
    add-int/lit8 v3, v3, 0x1

    .line 805
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 818
    .end local v2    # "i":I
    .end local v4    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_5
    const-string v5, "RestrictedPackageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " killed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " left."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method private clearPackageRunningState()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRunningPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mWakeLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 868
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mHighPowerLocationApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/RestrictedPackageService;->mCollected:Z

    .line 871
    return-void
.end method

.method private collectPackageRunningState()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 827
    iget-boolean v7, p0, Lcom/android/server/am/RestrictedPackageService;->mCollected:Z

    if-eqz v7, :cond_0

    .line 863
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 831
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 832
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 833
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    new-instance v6, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-direct {v6, v7, v9, v10}, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;-><init>(Ljava/util/Set;II)V

    .line 834
    .local v6, "prs":Lcom/android/server/am/RestrictedPackageService$PackageRunningState;
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->processName:Ljava/lang/String;

    .line 835
    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    iput-boolean v7, v6, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->foregroundActivities:Z

    .line 836
    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    iput-boolean v7, v6, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->foregroundServices:Z

    .line 837
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mRunningPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 839
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "prs":Lcom/android/server/am/RestrictedPackageService$PackageRunningState;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 844
    .local v4, "inm":Landroid/app/INotificationManager;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mNotifications:[Landroid/service/notification/StatusBarNotification;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    :goto_2
    const-class v7, Landroid/os/PowerManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal;

    .line 851
    .local v5, "power":Landroid/os/PowerManagerInternal;
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->getWakeLocks()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mWakeLocks:Ljava/util/List;

    .line 854
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    const-string v8, "appops"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 856
    .local v0, "aoManager":Landroid/app/AppOpsManager;
    new-array v7, v11, [I

    const/4 v8, 0x0

    const/16 v9, 0x2a

    aput v9, v7, v8

    invoke-virtual {v0, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mHighPowerLocationApps:Ljava/util/List;

    .line 858
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mHighPowerLocationApps:Ljava/util/List;

    if-nez v7, :cond_2

    .line 859
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mHighPowerLocationApps:Ljava/util/List;

    .line 862
    :cond_2
    iput-boolean v11, p0, Lcom/android/server/am/RestrictedPackageService;->mCollected:Z

    goto :goto_0

    .line 839
    .end local v0    # "aoManager":Landroid/app/AppOpsManager;
    .end local v3    # "i":I
    .end local v4    # "inm":Landroid/app/INotificationManager;
    .end local v5    # "power":Landroid/os/PowerManagerInternal;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 845
    .restart local v3    # "i":I
    .restart local v4    # "inm":Landroid/app/INotificationManager;
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private doClean()V
    .locals 8

    .prologue
    .line 756
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 759
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v4

    .line 760
    .local v4, "userIds":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 761
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/am/RestrictedPackageService;->cleanUserPackages(I)V

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    .end local v3    # "userId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackageService;->clearPackageRunningState()V

    .line 766
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/RestrictedPackageService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 767
    :cond_1
    return-void
.end method

.method private enqueueInterestingNotification(ILjava/lang/String;I)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 527
    .local v15, "res":Landroid/content/res/Resources;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    .local v13, "builder":Landroid/app/Notification$Builder;
    const v1, 0x10405c7

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 531
    .local v12, "body":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 532
    const v1, 0x1080078

    invoke-virtual {v13, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 533
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 534
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 535
    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 536
    const v1, 0x1060059

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 538
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/RestrictedPackageService;->buildAppManagerIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 539
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p3

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 543
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 545
    .local v10, "idReceived":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 546
    .local v4, "inm":Landroid/app/INotificationManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictedPackageService:AbnormalBehavior"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    move-object v6, v5

    move/from16 v11, p3

    invoke-interface/range {v4 .. v11}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v4    # "inm":Landroid/app/INotificationManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v10    # "idReceived":[I
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v14

    .line 549
    .local v14, "e":Landroid/os/RemoteException;
    const-string v1, "RestrictedPackageService"

    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDefaultSmsApplicationAsUser(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 676
    move-object v1, p0

    .line 677
    .local v1, "userContext":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 679
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 684
    :cond_0
    :goto_0
    invoke-static {v1, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 685
    .local v0, "smsApp":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 681
    .end local v0    # "smsApp":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getNotificationResId(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 503
    const v0, 0x10405c5

    .line 504
    .local v0, "resId":I
    if-nez p1, :cond_1

    .line 505
    const v0, 0x10405c5

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 507
    const v0, 0x10405c6

    goto :goto_0
.end method

.method private handleBroadcast(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 264
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 299
    :cond_0
    :goto_1
    return-void

    .line 264
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v2, "RestrictedPackageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBroadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 271
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v2, v4}, Lcom/android/server/am/RestrictedPackages;->size(I)I

    move-result v1

    .line 272
    .local v1, "pkgSize":I
    if-lez v1, :cond_0

    .line 273
    const-string v2, "RestrictedPackageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " restricted packages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v4, p0, Lcom/android/server/am/RestrictedPackageService;->mExcludeRecentlyUsedApps:Z

    .line 277
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackageService;->doClean()V

    .line 278
    iput-boolean v3, p0, Lcom/android/server/am/RestrictedPackageService;->mExcludeRecentlyUsedApps:Z

    .line 281
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/RestrictedPackageService;->scheduleIdleClean(J)V

    goto :goto_1

    .line 269
    .end local v1    # "pkgSize":I
    :sswitch_0
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    goto :goto_2

    :sswitch_1
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v4

    goto :goto_2

    :sswitch_2
    const-string v5, "com.android.server.am.clean_restricted_apps"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 287
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/am/RestrictedPackageService;->cancelIdleClean()V

    goto :goto_1

    .line 292
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/am/RestrictedPackageService;->mPower:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackageService;->doClean()V

    .line 294
    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/RestrictedPackageService;->scheduleIdleClean(J)V

    goto/16 :goto_1

    .line 269
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_0
        -0x56ac2893 -> :sswitch_1
        0x690ab2fd -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isPackageClearableByRunningState(Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 888
    const/16 v9, 0x10

    .line 889
    .local v9, "minAdj":I
    const/4 v5, 0x0

    .line 892
    .local v5, "hasFgService":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestrictedPackageService;->mRunningPackages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;

    .line 893
    .local v12, "prs":Lcom/android/server/am/RestrictedPackageService$PackageRunningState;
    iget v14, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->userId:I

    move/from16 v0, p2

    if-ne v14, v0, :cond_0

    iget-object v14, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->pkgList:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 894
    const-string v14, "RestrictedPackageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with adj "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->setAdj:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget v14, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->setAdj:I

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 896
    iget-boolean v14, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->foregroundServices:Z

    if-eqz v14, :cond_0

    iget-object v14, v12, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->pkgList:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 901
    .end local v12    # "prs":Lcom/android/server/am/RestrictedPackageService$PackageRunningState;
    :cond_1
    const/16 v14, 0x9

    if-lt v9, v14, :cond_2

    .line 902
    const-string v14, "RestrictedPackageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " need be killed with adj "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v14, 0x1

    .line 952
    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_1
    return v14

    .line 907
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v14, 0x2

    if-ne v9, v14, :cond_5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestrictedPackageService;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    if-eqz v14, :cond_5

    .line 908
    const/4 v4, 0x0

    .line 909
    .local v4, "hasFgNotification":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestrictedPackageService;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .local v1, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v10, v1, v6

    .line 910
    .local v10, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    move/from16 v0, p2

    if-ne v14, v0, :cond_3

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v14, v14, 0x40

    if-eqz v14, :cond_3

    .line 913
    const/4 v4, 0x1

    .line 909
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 916
    .end local v10    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_4
    if-nez v4, :cond_5

    .line 917
    const/4 v9, 0x5

    .line 918
    const-string v14, "RestrictedPackageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with fg service, but without fg notification, change adj to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v1    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v4    # "hasFgNotification":Z
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestrictedPackageService;->mWakeLocks:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManagerInternal$WakeLockInfo;

    .line 924
    .local v13, "wl":Landroid/os/PowerManagerInternal$WakeLockInfo;
    iget v14, v13, Landroid/os/PowerManagerInternal$WakeLockInfo;->userId:I

    move/from16 v0, p2

    if-ne v14, v0, :cond_6

    iget-object v14, v13, Landroid/os/PowerManagerInternal$WakeLockInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 925
    const/4 v14, 0x2

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 926
    const-string v14, "RestrictedPackageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is holding wakelock, change adj to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .end local v13    # "wl":Landroid/os/PowerManagerInternal$WakeLockInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestrictedPackageService;->mHighPowerLocationApps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 933
    .local v11, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    move/from16 v0, p2

    if-ne v14, v0, :cond_8

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 935
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 936
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 937
    .local v3, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 938
    const/4 v14, 0x2

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 939
    const-string v14, "RestrictedPackageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is using GPS, change adj to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 947
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "ops":Landroid/app/AppOpsManager$PackageOps;
    :cond_a
    const/4 v14, 0x5

    if-lt v9, v14, :cond_b

    .line 948
    const-string v14, "RestrictedPackageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " need be killed with adj "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 952
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private restrictNetworkAccess(IIZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "restricted"    # Z

    .prologue
    .line 556
    const-string v2, "RestrictedPackageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restrictNetworkAccess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    .line 559
    const-string v2, "RestrictedPackageService"

    const-string v3, "can not restrict system uid, ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    :try_start_0
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService;

    .line 566
    .local v1, "nms":Lcom/android/server/NetworkManagementService;
    if-eqz v1, :cond_0

    .line 567
    if-nez p3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/NetworkManagementService;->setFirewallUidNACRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v1    # "nms":Lcom/android/server/NetworkManagementService;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RestrictedPackageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed setFirewallUidNACRule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "nms":Lcom/android/server/NetworkManagementService;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setupNetworkPolicies()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 575
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 578
    .local v6, "restrictedUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/RestrictedPackageInfo;>;"
    const-string v9, "RestrictedPackageService"

    const-string v10, "setupNetworkPolicies"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Lcom/android/server/am/RestrictedPackageService;->getUsersLocked()[I

    move-result-object v8

    .line 582
    .local v8, "userIds":[I
    move-object v0, v8

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget v7, v0, v2

    .line 583
    .local v7, "userId":I
    const/4 v9, 0x6

    invoke-virtual {p0, v9, v7}, Lcom/android/server/am/RestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v5

    .line 586
    .local v5, "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RestrictedPackageInfo;

    .line 587
    .local v4, "pi":Landroid/app/RestrictedPackageInfo;
    iget v9, v4, Landroid/app/RestrictedPackageInfo;->mUid:I

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    .line 588
    invoke-virtual {v4}, Landroid/app/RestrictedPackageInfo;->isWifiAccessRestricted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 589
    iget v9, v4, Landroid/app/RestrictedPackageInfo;->mUid:I

    invoke-direct {p0, v9, v11, v11}, Lcom/android/server/am/RestrictedPackageService;->restrictNetworkAccess(IIZ)V

    .line 591
    :cond_1
    invoke-virtual {v4}, Landroid/app/RestrictedPackageInfo;->isMobileDataAccessRestricted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 592
    iget v9, v4, Landroid/app/RestrictedPackageInfo;->mUid:I

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/am/RestrictedPackageService;->restrictNetworkAccess(IIZ)V

    .line 594
    :cond_2
    iget v9, v4, Landroid/app/RestrictedPackageInfo;->mUid:I

    invoke-virtual {v6, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 582
    .end local v4    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 598
    .end local v5    # "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    .end local v7    # "userId":I
    :cond_4
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 599
    return-void
.end method

.method private setupRules()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackageService;->setupNetworkPolicies()V

    .line 196
    return-void
.end method

.method private userExists(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/RestrictedPackageService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 324
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method cancelIdleClean()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "RestrictedPackageService"

    const-string v1, "cancel idle clean"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/RestrictedPackageService;->mAutoCleanIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 310
    return-void
.end method

.method public checkService(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZI)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "callingFromFg"    # Z
    .param p6, "userId"    # I

    .prologue
    const/16 v4, 0x2710

    const/4 v2, 0x1

    .line 391
    iget-boolean v3, p0, Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z

    if-eqz v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 394
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 404
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v3, v4, :cond_0

    .line 409
    if-lt p3, v4, :cond_0

    .line 413
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, p6}, Lcom/android/server/am/RestrictedPackageService;->isPackageRestricted(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {p0, v1, p6}, Lcom/android/server/am/RestrictedPackageService;->isPackageStopped(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "className":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    const-string v2, "RestrictedPackageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " restricted stopped app, reject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v2, 0x0

    goto :goto_0

    .line 424
    :cond_2
    const-string v3, "RestrictedPackageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callerUid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callerPid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ainfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callingFromFg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 206
    iget-object v8, p0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.DUMP"

    const-string v10, "RestrictedPackageService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/am/RestrictedPackageService;->getUsersLocked()[I

    move-result-object v7

    .line 209
    .local v7, "userIds":[I
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v6, v0, v2

    .line 210
    .local v6, "userId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v6}, Lcom/android/server/am/RestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v5

    .line 212
    .local v5, "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RestrictedPackageInfo;

    .line 213
    .local v4, "pi":Landroid/app/RestrictedPackageInfo;
    invoke-virtual {v4}, Landroid/app/RestrictedPackageInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 209
    .end local v4    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 216
    .end local v5    # "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    .end local v6    # "userId":I
    :cond_1
    return-void
.end method

.method public filterBroadcastReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-boolean v11, p0, Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z

    if-eqz v11, :cond_1

    .line 387
    :cond_0
    return-void

    .line 343
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "action":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 346
    const-string v11, "RestrictedPackageService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filterBroadcastReceiver for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v10, "skipPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 351
    const/4 v11, 0x1

    move/from16 v0, p3

    invoke-virtual {p0, v11, v0}, Lcom/android/server/am/RestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v8

    .line 353
    .local v8, "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/RestrictedPackageInfo;

    .line 354
    .local v7, "pi":Landroid/app/RestrictedPackageInfo;
    iget-object v11, v7, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    .end local v2    # "action":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "pi":Landroid/app/RestrictedPackageInfo;
    .end local v8    # "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    .end local v10    # "skipPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 358
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "skipPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v11, 0x1

    move/from16 v0, p3

    invoke-virtual {p0, v11, v0}, Lcom/android/server/am/RestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v8

    .line 360
    .restart local v8    # "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/RestrictedPackageInfo;

    .line 361
    .restart local v7    # "pi":Landroid/app/RestrictedPackageInfo;
    iget-boolean v11, v7, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    if-eqz v11, :cond_4

    .line 362
    iget-object v11, v7, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 367
    .end local v7    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_5
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "android.appwidget.action"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_6
    const/4 v6, 0x1

    .line 370
    .local v6, "isWidgetInterestedBroadcasts":Z
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 372
    .local v9, "skipPackage":Ljava/lang/String;
    if-eqz v6, :cond_9

    move/from16 v0, p3

    invoke-virtual {p0, v9, v0}, Lcom/android/server/am/RestrictedPackageService;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 373
    const-string v11, "RestrictedPackageService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bound widget, ignore"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, v9, v11, v0}, Lcom/android/server/am/RestrictedPackageService;->setPackageStopped(Ljava/lang/String;ZI)V

    goto :goto_4

    .line 367
    .end local v6    # "isWidgetInterestedBroadcasts":Z
    .end local v9    # "skipPackage":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 378
    .restart local v6    # "isWidgetInterestedBroadcasts":Z
    .restart local v9    # "skipPackage":Ljava/lang/String;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    .line 379
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v1, :cond_7

    .line 380
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 381
    .local v3, "curt":Landroid/content/pm/ResolveInfo;
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 382
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 383
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 379
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method filterOutDefaultSmsApplication(Ljava/util/List;I)I
    .locals 10
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RestrictedPackageInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "aliveRestrictedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    const/4 v2, 0x0

    .line 689
    const-string v0, "RestrictedPackageService"

    const-string v3, "Filter out default sms app"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 692
    .local v6, "N":I
    if-nez v6, :cond_0

    move v7, v6

    .line 708
    .end local v6    # "N":I
    .local v7, "N":I
    :goto_0
    return v7

    .line 694
    .end local v7    # "N":I
    .restart local v6    # "N":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/server/am/RestrictedPackageService;->getDefaultSmsApplicationAsUser(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "smsApp":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 696
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 697
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/RestrictedPackageInfo;

    .line 698
    .local v9, "pi":Landroid/app/RestrictedPackageInfo;
    iget-object v0, v9, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const-string v0, "RestrictedPackageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t kill default sms application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    const/4 v3, 0x1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/RestrictedPackages;->setPackageRestricted(Ljava/lang/String;IIZI)V

    .line 703
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 696
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    .end local v9    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_2
    move v7, v6

    .line 708
    .end local v6    # "N":I
    .restart local v7    # "N":I
    goto :goto_0
.end method

.method filterOutRecentlyUsedPackages(Ljava/util/List;I)I
    .locals 20
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RestrictedPackageInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, "aliveRestrictedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    const-string v2, "RestrictedPackageService"

    const-string v3, "Filter out recently used packages"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 715
    .local v8, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestrictedPackageService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-eqz v2, :cond_0

    if-nez v8, :cond_1

    :cond_0
    move v2, v8

    .line 750
    :goto_0
    return v2

    .line 718
    :cond_1
    if-eqz p2, :cond_2

    .line 719
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 720
    const/4 v2, 0x0

    goto :goto_0

    .line 723
    :cond_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 724
    .local v11, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 725
    .local v6, "now":J
    const-wide/32 v2, 0x927c0

    sub-long v4, v6, v2

    .line 727
    .local v4, "since":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestrictedPackageService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v15

    .line 729
    .local v15, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v15, :cond_4

    .line 730
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/UsageStats;

    .line 731
    .local v16, "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v16 .. v16}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 732
    invoke-virtual/range {v16 .. v16}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 737
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_4
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 738
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_6

    .line 739
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/RestrictedPackageInfo;

    .line 740
    .local v14, "pi":Landroid/app/RestrictedPackageInfo;
    iget-object v2, v14, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 741
    iget-object v2, v14, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v12

    .line 742
    .local v12, "lastTimeUsed":J
    const-string v2, "RestrictedPackageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Don\'t kill "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v14, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", it was used "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v18, v6, v12

    invoke-static/range {v18 .. v19}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, " ago"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 745
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v8, v8, -0x1

    .line 738
    .end local v12    # "lastTimeUsed":J
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9    # "i":I
    .end local v14    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_6
    move v2, v8

    .line 750
    goto/16 :goto_0
.end method

.method public forwardBroadcast(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 220
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 261
    :cond_0
    :goto_1
    return-void

    .line 220
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_3
    move v8, v5

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 226
    :pswitch_0
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 227
    .local v4, "removedUserId":I
    if-lez v4, :cond_0

    .line 228
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v7, v4}, Lcom/android/server/am/RestrictedPackages;->trimUser(I)V

    goto :goto_1

    .line 223
    .end local v4    # "removedUserId":I
    :sswitch_0
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v7

    goto :goto_2

    :sswitch_1
    const-string v8, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_2
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_3
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_4
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_5
    const-string v8, "com.android.server.am.clean_restricted_apps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    goto :goto_2

    .line 233
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 234
    .local v2, "intentExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 235
    .local v5, "uid":I
    :cond_4
    if-eqz v2, :cond_5

    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 236
    .local v6, "userId":I
    :goto_3
    if-lez v5, :cond_0

    .line 237
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/am/RestrictedPackages;->trimUid(II)V

    goto :goto_1

    .end local v6    # "userId":I
    :cond_5
    move v6, v7

    .line 235
    goto :goto_3

    .line 242
    .end local v2    # "intentExtras":Landroid/os/Bundle;
    .end local v5    # "uid":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, "data":Landroid/net/Uri;
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 245
    .restart local v6    # "userId":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 246
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 247
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v7, v3, v6}, Lcom/android/server/am/RestrictedPackages;->trimPackage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 257
    .end local v1    # "data":Landroid/net/Uri;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackageService;->mHandler:Lcom/android/server/am/RestrictedPackageService$MyHandler;

    iget-object v8, p0, Lcom/android/server/am/RestrictedPackageService;->mHandler:Lcom/android/server/am/RestrictedPackageService$MyHandler;

    const/16 v9, 0x2328

    invoke-static {v8, v9, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/RestrictedPackageService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x7ad942ef -> :sswitch_0
        -0x6849e2b4 -> :sswitch_1
        -0x56ac2893 -> :sswitch_4
        0x1f50b9c2 -> :sswitch_2
        0x690ab2fd -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getRestrictedPackages(II)Ljava/util/List;
    .locals 2
    .param p1, "restrictions"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/RestrictedPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/RestrictedPackages;->getRestrictedPackages(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getUserManagerLocked()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method getUsersLocked()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/android/server/am/RestrictedPackageService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 329
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_0
.end method

.method isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageRestricted(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # I
    .param p3, "userId"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/RestrictedPackages;->isPackageRestricted(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isPackageStopped(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/RestrictedPackages;->isPackageStopped(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isUidRestricted(III)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "restrictions"    # I
    .param p3, "userId"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/RestrictedPackages;->isPackageRestricted(III)Z

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v0, "RestrictedPackageService"

    const-string v1, "publish restricted_packages"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    .line 151
    const-string v0, "restricted_packages"

    invoke-virtual {p0}, Lcom/android/server/am/RestrictedPackageService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 152
    return-void
.end method

.method public reportBatteryConsuming(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 439
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z

    if-eqz v13, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const-string v13, "RestrictedPackageService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reportBatteryConsuming "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 446
    :cond_2
    const-string v13, "RestrictedPackageService"

    const-string v14, "not interested app, ignore"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_4

    .line 452
    const-string v13, "RestrictedPackageService"

    const-string v14, "system app, ignore"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestrictedPackageService;->mLastReportedPackage:Ljava/lang/String;

    if-eqz v13, :cond_5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestrictedPackageService;->mLastReportedPackage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 458
    const-string v13, "RestrictedPackageService"

    const-string v14, "already notified, ignore"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 464
    .local v4, "curRealtime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/RestrictedPackageService;->mLastNotificationRealtime:J

    sub-long v10, v4, v14

    .line 465
    .local v10, "realtimeSince":J
    const-wide/32 v14, 0x36ee80

    cmp-long v13, v10, v14

    if-gez v13, :cond_6

    .line 466
    const-string v13, "RestrictedPackageService"

    const-string v14, "too frequent, ignore"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    :cond_6
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/RestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v9

    .line 473
    .local v9, "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/RestrictedPackageInfo;

    .line 474
    .local v8, "pi":Landroid/app/RestrictedPackageInfo;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v8, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 475
    const-string v13, "RestrictedPackageService"

    const-string v14, "restricted app, ignore"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    .end local v8    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_8
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v14, 0x6

    if-gt v13, v14, :cond_9

    .line 482
    const-string v13, "audio"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService;

    .line 483
    .local v2, "audio":Lcom/android/server/audio/AudioService;
    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/audio/AudioService;->isAppHasAudioFocus(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 484
    const-string v13, "RestrictedPackageService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is playing audio, ignore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 489
    .end local v2    # "audio":Lcom/android/server/audio/AudioService;
    :cond_9
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/am/RestrictedPackageService;->mLastNotificationRealtime:J

    .line 490
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/RestrictedPackageService;->mLastReportedPackage:Ljava/lang/String;

    .line 493
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 494
    .local v3, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/RestrictedPackageService;->getNotificationResId(I)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 496
    .local v12, "text":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v14}, Lcom/android/server/am/RestrictedPackageService;->enqueueInterestingNotification(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 497
    .end local v3    # "context":Landroid/content/Context;
    .end local v12    # "text":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 498
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "RestrictedPackageService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NameNotFoundException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public resumeStoppedPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 605
    .local v0, "origId":J
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/RestrictedPackageService;->resumeStoppedPackageImpl(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    return-void

    .line 607
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeStoppedPackageImpl(Ljava/lang/String;IZ)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "immediately"    # Z

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 614
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :goto_0
    if-eqz p3, :cond_0

    .line 623
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 626
    .local v4, "bcIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/RestrictedPackageService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v15, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ActivityManagerService;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 629
    .end local v4    # "bcIntent":Landroid/content/Intent;
    :cond_0
    monitor-exit v17

    .line 630
    return-void

    .line 617
    :catch_0
    move-exception v16

    .line 618
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RestrictedPackageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 616
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method scheduleIdleClean(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 302
    const-string v0, "RestrictedPackageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule next clean after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/server/am/RestrictedPackageService;->mAutoCleanIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 305
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;IIZI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictions"    # I
    .param p4, "restricted"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/RestrictedPackages;->setPackageRestricted(Ljava/lang/String;IIZI)V

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 639
    .local v6, "origId":J
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 640
    if-nez p4, :cond_0

    .line 641
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/am/RestrictedPackageService;->resumeStoppedPackageImpl(Ljava/lang/String;IZ)V

    .line 644
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 645
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Lcom/android/server/am/RestrictedPackageService;->restrictNetworkAccess(IIZ)V

    .line 647
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Lcom/android/server/am/RestrictedPackageService;->restrictNetworkAccess(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    return-void

    .line 651
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setPackageStopped(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/RestrictedPackages;->setPackageStopped(Ljava/lang/String;ZI)V

    .line 673
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "RestrictedPackageService"

    const-string v1, "system shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RestrictedPackageService;->mShuttingDown:Z

    .line 201
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    invoke-virtual {v0}, Lcom/android/server/am/RestrictedPackages;->saveSettingsNow()V

    .line 202
    return-void
.end method

.method public systemReady()V
    .locals 22

    .prologue
    .line 155
    const-string v17, "RestrictedPackageService"

    const-string v18, "system ready"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AlarmManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/RestrictedPackageService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.android.server.am.clean_restricted_apps"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/RestrictedPackageService;->mAutoCleanIntent:Landroid/app/PendingIntent;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/RestrictedPackageService;->mPower:Landroid/os/PowerManager;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mPower:Landroid/os/PowerManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mPower:Landroid/os/PowerManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "RestrictedPackageService"

    invoke-virtual/range {v17 .. v19}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/RestrictedPackageService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-class v18, Landroid/appwidget/AppWidgetManager;

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/appwidget/AppWidgetManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/RestrictedPackageService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "usagestats"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/RestrictedPackageService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 164
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/RestrictedPackageService;->mSystemReady:Z

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/RestrictedPackageService;->getUsersLocked()[I

    move-result-object v16

    .line 167
    .local v16, "userIds":[I
    move-object/from16 v4, v16

    .local v4, "arr$":[I
    array-length v8, v4

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget v15, v4, v6

    .line 168
    .local v15, "userId":I
    const-string v17, "RestrictedPackageService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Prune dirty packages for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v10

    .line 170
    .local v10, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 171
    .local v11, "packagesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "i$":I
    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 172
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 175
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/server/am/RestrictedPackageService;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v13

    .line 176
    .local v13, "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/RestrictedPackageInfo;

    .line 177
    .local v12, "pi":Landroid/app/RestrictedPackageInfo;
    iget-object v9, v12, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 178
    .local v9, "packageName":Ljava/lang/String;
    iget v14, v12, Landroid/app/RestrictedPackageInfo;->mUid:I

    .line 179
    .local v14, "uid":I
    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 180
    const-string v17, "RestrictedPackageService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not existed, remove it"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v15}, Lcom/android/server/am/RestrictedPackages;->trimPackage(Ljava/lang/String;I)V

    goto :goto_2

    .line 182
    :cond_3
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v14, :cond_2

    .line 183
    const-string v17, "RestrictedPackageService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " uid changed, remove it"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mRestrictedPkgs:Lcom/android/server/am/RestrictedPackages;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v15}, Lcom/android/server/am/RestrictedPackages;->trimPackage(Ljava/lang/String;I)V

    goto :goto_2

    .line 167
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "pi":Landroid/app/RestrictedPackageInfo;
    .end local v14    # "uid":I
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_0

    .line 190
    .end local v10    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "packagesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "restrictedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    .end local v15    # "userId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackageService;->mHandler:Lcom/android/server/am/RestrictedPackageService$MyHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2329

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/RestrictedPackageService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    return-void
.end method
