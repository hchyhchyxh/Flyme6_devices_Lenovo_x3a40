.class Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;
.super Landroid/widget/lenovoweather/DrawItem_Image_Multi;
.source "DrawItem_Image_Weather_Background.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Image_CallNum"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Image_Multi;-><init>()V

    .line 9
    const-string v0, "ImageWeatherBackground"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;->mType:Ljava/lang/String;

    .line 11
    const/16 v0, 0xb

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Weather_Background;->mImageNumMax:I

    .line 12
    return-void
.end method
