.class Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
.super Landroid/widget/lenovoweather/EventItem_Base$EventListener;
.source "DrawItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAlphaT:F

.field private mAlphaT_On:Z

.field private mAlpha_On:Z

.field private mAnimator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetX:I

.field private mOffsetXA_On:Z

.field private mOffsetXR_On:Z

.field private mOffsetXT:I

.field private mOffsetXT_On:Z

.field private mOffsetX_On:Z

.field private mOffsetY:I

.field private mOffsetYA_On:Z

.field private mOffsetYR_On:Z

.field private mOffsetYT:I

.field private mOffsetYT_On:Z

.field private mOffsetY_On:Z

.field private mRotate:F

.field private mRotateT:F

.field private mRotateT_On:Z

.field private mRotate_On:Z

.field private mScaleX:F

.field private mScaleXT:F

.field private mScaleXT_On:Z

.field private mScaleX_On:Z

.field private mScaleY:F

.field private mScaleYT:F

.field private mScaleYT_On:Z

.field private mScaleY_On:Z

.field private mVisible:Z

.field private mVisible_On:Z

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Base;


# direct methods
.method constructor <init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V
    .locals 1
    .param p2, "eventItem"    # Landroid/widget/lenovoweather/EventItem_Base;

    .prologue
    .line 760
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    .line 761
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/EventItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAnimator:Ljava/util/ArrayList;

    .line 762
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT_On:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT_On:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT:F

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT:F

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT_On:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT_On:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F

    return v0
.end method

.method static synthetic access$1602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F

    return p1
.end method

.method static synthetic access$1700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT:F

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT:F

    return p1
.end method

.method static synthetic access$1800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT_On:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT_On:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F

    return v0
.end method

.method static synthetic access$1902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F

    return p1
.end method

.method static synthetic access$200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXR_On:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT:F

    return v0
.end method

.method static synthetic access$2002(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT:F

    return p1
.end method

.method static synthetic access$202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXR_On:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT_On:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT_On:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F

    return v0
.end method

.method static synthetic access$2202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F

    return p1
.end method

.method static synthetic access$2300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F

    return v0
.end method

.method static synthetic access$2302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # F

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F

    return p1
.end method

.method static synthetic access$2400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYR_On:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible_On:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible_On:Z

    return p1
.end method

.method static synthetic access$302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYR_On:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAnimator:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "x2"    # Lorg/w3c/dom/Node;

    .prologue
    .line 695
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->loadAnimator(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXA_On:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXA_On:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYA_On:Z

    return v0
.end method

.method static synthetic access$502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYA_On:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT_On:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT_On:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # I

    .prologue
    .line 695
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT_On:Z

    return v0
.end method

.method static synthetic access$902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT_On:Z

    return p1
.end method

.method private loadAnimator(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    .line 791
    sget-object v6, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 792
    const-string v6, "DrawItem_Base"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EventListener.loadAnimator CodeThemeScript1Plug "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 798
    .local v3, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v3, :cond_2

    .line 799
    const/4 v4, 0x0

    .line 800
    .local v4, "node":Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 803
    .local v5, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 804
    .local v2, "id":I
    const-string v6, "id"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 806
    if-eqz v4, :cond_1

    .line 807
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 808
    if-eqz v5, :cond_1

    .line 810
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 818
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;-><init>(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Landroid/widget/lenovoweather/DrawItem_Base$1;)V

    .line 819
    .local v0, "animator":Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mId:I
    invoke-static {v0, v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->access$3302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;I)I

    .line 820
    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mTimes:I
    invoke-static {v0, v6}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->access$3502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;I)I

    .line 824
    const-string v6, "times"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 826
    if-eqz v4, :cond_2

    .line 827
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 828
    if-eqz v5, :cond_2

    .line 830
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mTimes:I
    invoke-static {v0, v6}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->access$3502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 837
    .end local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    .end local v2    # "id":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 811
    .restart local v2    # "id":I
    .restart local v4    # "node":Lorg/w3c/dom/Node;
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 831
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    :catch_1
    move-exception v1

    .line 832
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 766
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "DrawItem_Base"

    const-string v2, "EventListener.toString"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetXR_On:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXR_On:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetYR_On:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYR_On:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetXA_On:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXA_On:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetYA_On:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYA_On:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetXT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT_On:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetYT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT_On:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mScaleX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mScaleXT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT_On:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mScaleY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mScaleYT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT_On:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mRotate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mRotateT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT_On:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mAlpha:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mAlphaT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT_On:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mVisible:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible_On:Z

    if-eqz v2, :cond_1

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mAnimator.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_3

    :cond_6
    move-object v0, v1

    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_5

    :cond_8
    move-object v0, v1

    goto/16 :goto_6

    :cond_9
    move-object v0, v1

    goto/16 :goto_7

    :cond_a
    move-object v0, v1

    goto/16 :goto_8

    :cond_b
    move-object v0, v1

    goto :goto_9

    :cond_c
    move-object v0, v1

    goto :goto_a

    :cond_d
    move-object v0, v1

    goto :goto_b
.end method
