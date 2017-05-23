.class public Lcom/android/internal/app/FwdActivity;
.super Landroid/app/Activity;
.source "FwdActivity.java"


# static fields
.field public static final ACTION_MOVE_MOVE_TASK:Ljava/lang/String; = "com.lenovo.protected.ACTION_MOVE_MOVE_TASK"

.field public static final AUTHORIZATION_LOGIN_ACTIVITY:Ljava/lang/String; = "com.lenovo.security.applock.CMAppsLockActivity"

.field public static final AUTHORIZATION_PACKAGE:Ljava/lang/String; = "com.lenovo.security"

.field public static final AUTHORIZATION_REQUEST_CODE:I = 0x1ee3

.field public static final AUTHORIZATION_RESULT_CODE:I = 0x22b8

.field public static final INTENT_PROTECTIONAPP_EXTRA_FLAGS:Ljava/lang/String; = "com.lenovo.protected.data.PROTECTED_APPS_FLAGS"

.field public static final INTENT_PROTECTIONAPP_EXTRA_OPTIONS:Ljava/lang/String; = "com.lenovo.protected.data.PROTECTED_APPS_OPTIONS"

.field public static final INTENT_PROTECTIONAPP_EXTRA_PACKAGENAME:Ljava/lang/String; = "com.lenovo.protected.data.PROTECTED_APPS_PACKAGENAME"

.field public static final INTENT_PROTECTIONAPP_EXTRA_TASKID:Ljava/lang/String; = "com.lenovo.protected.data.PROTECTED_APPS_TASK_ID"

.field public static final INTENT_PROTECT_MOVETASK:Ljava/lang/String; = "com.lenovo.protected.intent.MOVE_PROTECTED_TARGET_INTENT"

.field public static final INTENT_PROTECT_STARTAPP:Ljava/lang/String; = "com.lenovo.protected.intent.PROTECTED_APP_TARGET_INTENT"

.field public static final SETTINGS_LOCKED_APPS_LIST:Ljava/lang/String; = "settings_locked_apps_list"


# instance fields
.field private wrapIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/FwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 94
    const/16 v7, 0x1ee3

    if-ne p1, v7, :cond_0

    .line 95
    const/16 v7, 0x22b8

    if-ne p2, v7, :cond_0

    .line 97
    const-string v7, "com.lenovo.protected.ACTION_MOVE_MOVE_TASK"

    iget-object v8, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    iget-object v7, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    const-string v8, "com.lenovo.protected.intent.MOVE_PROTECTED_TARGET_INTENT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 100
    .local v3, "mMoveIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 101
    const-string v7, "com.lenovo.protected.data.PROTECTED_APPS_TASK_ID"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 102
    .local v6, "taskId":I
    const-string v7, "com.lenovo.protected.data.PROTECTED_APPS_FLAGS"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, "flags":I
    const-string v7, "com.lenovo.protected.data.PROTECTED_APPS_OPTIONS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 104
    .local v5, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/internal/app/FwdActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 105
    .local v2, "mAm":Landroid/app/ActivityManager;
    if-eqz v5, :cond_1

    .line 106
    invoke-virtual {v2, v6, v1, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 141
    .end local v1    # "flags":I
    .end local v2    # "mAm":Landroid/app/ActivityManager;
    .end local v3    # "mMoveIntent":Landroid/content/Intent;
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "taskId":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/FwdActivity;->finish()V

    .line 142
    return-void

    .line 108
    .restart local v1    # "flags":I
    .restart local v2    # "mAm":Landroid/app/ActivityManager;
    .restart local v3    # "mMoveIntent":Landroid/content/Intent;
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v6    # "taskId":I
    :cond_1
    invoke-virtual {v2, v6, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0

    .line 112
    .end local v1    # "flags":I
    .end local v2    # "mAm":Landroid/app/ActivityManager;
    .end local v3    # "mMoveIntent":Landroid/content/Intent;
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "taskId":I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    .line 113
    .local v4, "mTargetIntent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {v4}, Landroid/content/Intent;->restoreComponent()V

    .line 117
    const/16 v7, 0x800

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 120
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    const-string v7, "AGUARD"

    const-string v8, "Main Activity started from launcher will be fwded without modification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const v7, 0x10008000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/app/FwdActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v7, "AGUARD"

    const-string v8, "Grant permissions for rest intents"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/high16 v7, 0x3000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const/4 v7, 0x0

    const/16 v8, -0x2710

    invoke-virtual {p0, v4, v7, v9, v8}, Lcom/android/internal/app/FwdActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/FwdActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    .line 58
    iget-object v4, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 59
    const-string v4, "AGUARD"

    const-string v5, "Something is wrong when fwding intents as intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/FwdActivity;->finish()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/FwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/FwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 66
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "container":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/FwdActivity;->setContentView(Landroid/view/View;)V

    .line 69
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v3, "protectedAppIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lenovo.security"

    const-string v6, "com.lenovo.security.applock.CMAppsLockActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    const v4, 0x800800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    const-string v4, "com.lenovo.protected.ACTION_MOVE_MOVE_TASK"

    iget-object v5, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    iget-object v4, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    const-string v5, "com.lenovo.protected.intent.MOVE_PROTECTED_TARGET_INTENT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 78
    .local v2, "mMoveIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 79
    const-string v4, "com.lenovo.protected.data.PROTECTED_APPS_PACKAGENAME"

    const-string v5, "com.lenovo.protected.data.PROTECTED_APPS_PACKAGENAME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .end local v2    # "mMoveIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/16 v4, 0x1ee3

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/FwdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    return-void

    .line 82
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->restoreComponent()V

    .line 83
    iget-object v4, p0, Lcom/android/internal/app/FwdActivity;->wrapIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 84
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 85
    const-string v4, "com.lenovo.protected.data.PROTECTED_APPS_PACKAGENAME"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
