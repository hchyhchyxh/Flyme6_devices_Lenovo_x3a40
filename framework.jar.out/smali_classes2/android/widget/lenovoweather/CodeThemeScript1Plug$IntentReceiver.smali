.class Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CodeThemeScript1Plug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/CodeThemeScript1Plug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "x1"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug$1;

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;-><init>(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1250
    if-nez p2, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CodeThemeScript1Plug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.weather.action.DEF_CITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.weather.action.FORCAST_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.weather.action.TEMPERATURE_UNIT_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.weather.action.CURRENT_CONDITIONS_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    :cond_2
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1262
    const-string v1, "CodeThemeScript1Plug"

    const-string v2, "update time and weather "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1263
    :cond_3
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # invokes: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->timeChange()V
    invoke-static {v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$400(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 1264
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$IntentReceiver;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # invokes: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->updateWeatherContent()V
    invoke-static {v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$500(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    goto :goto_0
.end method
