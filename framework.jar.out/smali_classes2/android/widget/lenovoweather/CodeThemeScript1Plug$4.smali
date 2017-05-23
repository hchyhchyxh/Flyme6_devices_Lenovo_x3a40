.class Landroid/widget/lenovoweather/CodeThemeScript1Plug$4;
.super Ljava/lang/Object;
.source "CodeThemeScript1Plug.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1288
    iput-object p1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$4;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1290
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    const-string v1, "CodeThemeScript1Plug"

    const-string v2, "Weatherlistener onClick"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1292
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1293
    .local v0, "launchIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lenovo.lewea"

    const-string v3, "com.lenovo.weather.activity.WelcomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1295
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1297
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1298
    const-string v1, "CodeThemeScript1Plug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$4;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$700(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1299
    :cond_1
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$4;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$700(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1300
    return-void
.end method
