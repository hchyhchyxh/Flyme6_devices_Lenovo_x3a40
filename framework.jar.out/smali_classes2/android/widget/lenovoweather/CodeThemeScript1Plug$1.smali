.class Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;
.super Ljava/lang/Object;
.source "CodeThemeScript1Plug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/CodeThemeScript1Plug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;


# direct methods
.method constructor <init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 225
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "CodeThemeScript1Plug"

    const-string v3, "mAnimatorMechanismRunnable.run"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 230
    .local v0, "now":J
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    invoke-virtual {v2, v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->updateFrameAnimator(J)V

    .line 231
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    invoke-virtual {v2, v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->updateAnimator(J)V

    .line 233
    iget-object v2, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$200(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mAnimatorMechanismRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$000(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mFrameInterval:I
    invoke-static {v4}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$100(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method
