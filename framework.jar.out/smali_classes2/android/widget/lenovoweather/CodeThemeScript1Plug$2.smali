.class Landroid/widget/lenovoweather/CodeThemeScript1Plug$2;
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
    .line 1270
    iput-object p1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$2;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1272
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    const-string v1, "CodeThemeScript1Plug"

    const-string v2, "Timelistener onClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1274
    :cond_0
    new-instance v0, Landroid/content/Intent;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->ACTION_SHOW_DESKCLOCK:Ljava/lang/String;
    invoke-static {}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, "clockIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/widget/lenovoweather/CodeThemeScript1Plug$2;->this$0:Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    # getter for: Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mApp:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->access$700(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1276
    return-void
.end method
