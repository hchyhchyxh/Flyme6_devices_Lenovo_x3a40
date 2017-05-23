.class Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Break;
.super Landroid/widget/lenovoweather/DrawItem_Text;
.source "DrawItem_Text_Temperature_Break.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Text_Sim3"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Text;-><init>()V

    .line 9
    const-string v0, "TemperatureBreak"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Break;->mType:Ljava/lang/String;

    .line 10
    return-void
.end method
