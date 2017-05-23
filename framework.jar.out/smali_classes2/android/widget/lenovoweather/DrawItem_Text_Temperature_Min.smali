.class Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Min;
.super Landroid/widget/lenovoweather/DrawItem_Text;
.source "DrawItem_Text_Temperature_Min.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Text_Sim1"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Text;-><init>()V

    .line 9
    const-string v0, "TemperatureMin"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Temperature_Min;->mType:Ljava/lang/String;

    .line 10
    return-void
.end method
