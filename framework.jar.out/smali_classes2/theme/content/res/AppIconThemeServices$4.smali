.class Ltheme/content/res/AppIconThemeServices$4;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltheme/content/res/AppIconThemeServices;->systemReady()V
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
    .line 453
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$4;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$4;->this$0:Ltheme/content/res/AppIconThemeServices;

    # invokes: Ltheme/content/res/AppIconThemeServices;->parseIconMapFile()V
    invoke-static {v0}, Ltheme/content/res/AppIconThemeServices;->access$000(Ltheme/content/res/AppIconThemeServices;)V

    .line 457
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$4;->this$0:Ltheme/content/res/AppIconThemeServices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J
    invoke-static {v0, v2, v3}, Ltheme/content/res/AppIconThemeServices;->access$102(Ltheme/content/res/AppIconThemeServices;J)J

    .line 458
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$4;->this$0:Ltheme/content/res/AppIconThemeServices;

    const/4 v1, 0x1

    # invokes: Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V
    invoke-static {v0, v1}, Ltheme/content/res/AppIconThemeServices;->access$200(Ltheme/content/res/AppIconThemeServices;Z)V

    .line 459
    return-void
.end method
