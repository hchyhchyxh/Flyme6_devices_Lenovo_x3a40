.class Ltheme/content/res/AppIconThemeServices$3;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltheme/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltheme/content/res/AppIconThemeServices;

.field final synthetic val$themeId:Ljava/lang/String;

.field final synthetic val$themePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    iput-object p2, p0, Ltheme/content/res/AppIconThemeServices$3;->val$themePath:Ljava/lang/String;

    iput-object p3, p0, Ltheme/content/res/AppIconThemeServices$3;->val$themeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    # invokes: Ltheme/content/res/AppIconThemeServices;->parseIconMapFile()V
    invoke-static {v0}, Ltheme/content/res/AppIconThemeServices;->access$000(Ltheme/content/res/AppIconThemeServices;)V

    .line 407
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J
    invoke-static {v0, v2, v3}, Ltheme/content/res/AppIconThemeServices;->access$102(Ltheme/content/res/AppIconThemeServices;J)J

    .line 408
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    const/4 v1, 0x1

    # invokes: Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V
    invoke-static {v0, v1}, Ltheme/content/res/AppIconThemeServices;->access$200(Ltheme/content/res/AppIconThemeServices;Z)V

    .line 410
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$3;->this$0:Ltheme/content/res/AppIconThemeServices;

    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices$3;->val$themePath:Ljava/lang/String;

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices$3;->val$themeId:Ljava/lang/String;

    # invokes: Ltheme/content/res/AppIconThemeServices;->sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Ltheme/content/res/AppIconThemeServices;->access$500(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method
