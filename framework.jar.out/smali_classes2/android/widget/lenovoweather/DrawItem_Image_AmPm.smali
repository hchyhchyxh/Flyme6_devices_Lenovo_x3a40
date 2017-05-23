.class Landroid/widget/lenovoweather/DrawItem_Image_AmPm;
.super Landroid/widget/lenovoweather/DrawItem_Image_Multi;
.source "DrawItem_Image_AmPm.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Image_AmPm"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Image_Multi;-><init>()V

    .line 9
    const-string v0, "ImageAmPm"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;->mType:Ljava/lang/String;

    .line 11
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_AmPm;->mImageNumMax:I

    .line 12
    return-void
.end method
