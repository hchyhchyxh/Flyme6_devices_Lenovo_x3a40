.class Landroid/widget/lenovoweather/DrawItem_Text_AmPm;
.super Landroid/widget/lenovoweather/DrawItem_Text;
.source "DrawItem_Text_AmPm.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Text_AmPm"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Text;-><init>()V

    .line 9
    const-string v0, "TextAmPm"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_AmPm;->mType:Ljava/lang/String;

    .line 10
    return-void
.end method
