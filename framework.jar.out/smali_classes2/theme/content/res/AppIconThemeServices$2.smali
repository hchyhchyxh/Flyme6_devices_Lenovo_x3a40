.class Ltheme/content/res/AppIconThemeServices$2;
.super Landroid/content/BroadcastReceiver;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltheme/content/res/AppIconThemeServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltheme/content/res/AppIconThemeServices;


# direct methods
.method constructor <init>(Ltheme/content/res/AppIconThemeServices;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    const-string v4, "AppIconThemeServices"

    const-string v5, "mThemeCenterReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v4, "action_themecenter_themechange_lelauncher"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    const-string v4, "ThemePath"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "themePath":Ljava/lang/String;
    const-string v4, "AppIconThemeServices"

    const-string v5, "mThemeCenterReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive themePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "ThemeResId"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "themeResId":Ljava/lang/String;
    const-string v4, "AppIconThemeServices"

    const-string v5, "mThemeCenterReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive themeResId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    .end local v2    # "themePath":Ljava/lang/String;
    .end local v3    # "themeResId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v2    # "themePath":Ljava/lang/String;
    .restart local v3    # "themeResId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Ltheme/content/res/AppIconThemeServices$2$1;

    invoke-direct {v5, p0, v2, v3}, Ltheme/content/res/AppIconThemeServices$2$1;-><init>(Ltheme/content/res/AppIconThemeServices$2;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "themeChangeThread"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 365
    .end local v2    # "themePath":Ljava/lang/String;
    .end local v3    # "themeResId":Ljava/lang/String;
    :cond_2
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    # getter for: Ltheme/content/res/AppIconThemeServices;->mCurrentUserId:I
    invoke-static {v4}, Ltheme/content/res/AppIconThemeServices;->access$400(Ltheme/content/res/AppIconThemeServices;)I

    move-result v1

    .line 367
    .local v1, "oldUserId":I
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Ltheme/content/res/AppIconThemeServices;->mCurrentUserId:I
    invoke-static {v4, v5}, Ltheme/content/res/AppIconThemeServices;->access$402(Ltheme/content/res/AppIconThemeServices;I)I

    .line 368
    const-string v4, "AppIconThemeServices"

    const-string v5, "mThemeCenterReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentUserId is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    # getter for: Ltheme/content/res/AppIconThemeServices;->mCurrentUserId:I
    invoke-static {v7}, Ltheme/content/res/AppIconThemeServices;->access$400(Ltheme/content/res/AppIconThemeServices;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    # getter for: Ltheme/content/res/AppIconThemeServices;->mCurrentUserId:I
    invoke-static {v4}, Ltheme/content/res/AppIconThemeServices;->access$400(Ltheme/content/res/AppIconThemeServices;)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 370
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices$2;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-virtual {v4}, Ltheme/content/res/AppIconThemeServices;->setThemeForUserSwitched()V

    goto :goto_0
.end method
