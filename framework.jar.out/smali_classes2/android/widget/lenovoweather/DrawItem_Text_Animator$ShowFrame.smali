.class Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
.super Ljava/lang/Object;
.source "DrawItem_Text_Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Text_Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowFrame"
.end annotation


# instance fields
.field private mBottomDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEndDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mSrcOrigin:Ljava/lang/String;

.field private mSrcTranslated:Ljava/lang/String;

.field private mStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mTimeBegin:I

.field private mTimeEnd:I

.field private mTopDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Text_Animator;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/content/res/Resources;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p2, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "timeBegin"    # I
    .param p5, "src"    # Ljava/lang/String;
    .param p6, "start"    # Landroid/graphics/Bitmap;
    .param p7, "top"    # Landroid/graphics/Bitmap;
    .param p8, "end"    # Landroid/graphics/Bitmap;
    .param p9, "bottom"    # Landroid/graphics/Bitmap;
    .param p10, "duration"    # I

    .prologue
    .line 863
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->this$0:Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v1, "DrawItem_Text_Animator"

    const-string v2, "ShowFrame.ShowFrame"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CodeThemeScript1Plug "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resources "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "int "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "int "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 871
    :cond_0
    iput p4, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeBegin:I

    .line 872
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeBegin:I

    add-int v1, v1, p10

    iput v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeEnd:I

    .line 873
    iput-object p5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcOrigin:Ljava/lang/String;

    .line 874
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcOrigin:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;

    .line 875
    if-eqz p6, :cond_1

    .line 876
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, p6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 878
    :cond_1
    if-eqz p8, :cond_2

    .line 879
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, p8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mEndDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 881
    :cond_2
    if-eqz p7, :cond_3

    .line 882
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, p7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTopDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 884
    :cond_3
    if-eqz p9, :cond_4

    .line 885
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p9

    invoke-direct {v1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mBottomDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 887
    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/content/res/Resources;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    .param p2, "x1"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p3, "x2"    # Landroid/content/res/Resources;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Landroid/graphics/Bitmap;
    .param p7, "x6"    # Landroid/graphics/Bitmap;
    .param p8, "x7"    # Landroid/graphics/Bitmap;
    .param p9, "x8"    # Landroid/graphics/Bitmap;
    .param p10, "x9"    # I
    .param p11, "x10"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;

    .prologue
    .line 843
    invoke-direct/range {p0 .. p10}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/content/res/Resources;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 843
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcOrigin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeBegin:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTopDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mEndDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mBottomDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 843
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeEnd:I

    return v0
.end method
