.class Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
.super Ljava/lang/Object;
.source "DrawItem_Image_Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Image_Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDuration:I

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Image_Animator;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->this$0:Landroid/widget/lenovoweather/DrawItem_Image_Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/widget/lenovoweather/DrawItem_Image_Animator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    .param p2, "x1"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$1;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;-><init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;

    .prologue
    .line 399
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mDuration:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 399
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mDuration:I

    return p1
.end method

.method static synthetic access$200(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;

    .prologue
    .line 399
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 399
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
