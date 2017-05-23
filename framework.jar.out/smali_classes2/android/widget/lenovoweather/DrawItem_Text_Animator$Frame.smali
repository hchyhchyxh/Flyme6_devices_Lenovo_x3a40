.class Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
.super Ljava/lang/Object;
.source "DrawItem_Text_Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Text_Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field private mBottom:Landroid/graphics/Bitmap;

.field private mDuration:I

.field private mEnd:Landroid/graphics/Bitmap;

.field private mSrc:Ljava/lang/String;

.field private mStart:Landroid/graphics/Bitmap;

.field private mTop:Landroid/graphics/Bitmap;

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Text_Animator;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->this$0:Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    .param p2, "x1"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;

    .prologue
    .line 827
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .prologue
    .line 827
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mDuration:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 827
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mDuration:I

    return p1
.end method

.method static synthetic access$200(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .prologue
    .line 827
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mSrc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .prologue
    .line 827
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mStart:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mStart:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .prologue
    .line 827
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mEnd:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mEnd:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .prologue
    .line 827
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mTop:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mTop:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .prologue
    .line 827
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mBottom:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mBottom:Landroid/graphics/Bitmap;

    return-object p1
.end method
