.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field public static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8

.field public static mIsIPO:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "oldUserId"    # I
    .param p5, "userName"    # Ljava/lang/String;
    .param p6, "aboveSystem"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v5, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v5, p0, Lcom/android/server/am/UserSwitchingDialog;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v5, Lcom/android/server/am/UserSwitchingDialog$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v5, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 74
    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 77
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 81
    .local v3, "res":Landroid/content/res/Resources;
    if-nez p4, :cond_1

    const/16 v5, 0xa

    if-ne p3, v5, :cond_1

    .line 82
    const v5, 0x1040520

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 83
    const v5, 0x104051d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p5, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x10900fb

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 93
    .local v4, "view":Landroid/view/View;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 96
    if-eqz p6, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x110

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/android/server/am/UserSwitchingDialog;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void

    .line 84
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    const/16 v5, 0xa

    if-ne p4, v5, :cond_2

    if-nez p3, :cond_2

    .line 85
    const v5, 0x104051f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 86
    const v5, 0x104051d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p5, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    const v5, 0x104051c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p5, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onWindowShown()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 137
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 115
    .local v1, "pm":Landroid/os/PowerManager;
    sget-boolean v2, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "ActivityManagerUserSwitchingDialog"

    const-string v3, "IPO shutdown, switch user to foreground."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v2, v3, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 118
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    .line 131
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v2, v3, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method startUser()V
    .locals 3

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v1, :cond_2

    .line 142
    sget-boolean v1, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    .end local v0    # "decorView":Landroid/view/View;
    :cond_2
    monitor-exit p0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
