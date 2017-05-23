.class Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;
.super Ljava/lang/Object;
.source "DrawItem_Image_Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Image_Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowFrame"
.end annotation


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mTimeBegin:I

.field private mTimeEnd:I

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Image_Animator;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/content/res/Resources;ILandroid/graphics/Bitmap;I)V
    .locals 6
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "timeBegin"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "duration"    # I

    .prologue
    .line 416
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->this$0:Landroid/widget/lenovoweather/DrawItem_Image_Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "DrawItem_Image_Animator"

    const-string v1, "ShowFrame.ShowFrame"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resources "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    :cond_0
    iput p3, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeBegin:I

    .line 423
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeBegin:I

    add-int/2addr v0, p5

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeEnd:I

    .line 424
    if-eqz p4, :cond_1

    .line 425
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 427
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/content/res/Resources;ILandroid/graphics/Bitmap;ILandroid/widget/lenovoweather/DrawItem_Image_Animator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/graphics/Bitmap;
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$1;

    .prologue
    .line 407
    invoke-direct/range {p0 .. p5}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;-><init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/content/res/Resources;ILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    .prologue
    .line 407
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeEnd:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    .prologue
    .line 407
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeBegin:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method
