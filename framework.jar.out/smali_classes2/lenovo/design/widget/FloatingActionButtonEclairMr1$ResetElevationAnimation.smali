.class Llenovo/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;
.super Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/FloatingActionButtonEclairMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetElevationAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;


# direct methods
.method private constructor <init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;->this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;-><init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;Llenovo/design/widget/FloatingActionButtonEclairMr1$1;)V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;Llenovo/design/widget/FloatingActionButtonEclairMr1$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/FloatingActionButtonEclairMr1;
    .param p2, "x1"    # Llenovo/design/widget/FloatingActionButtonEclairMr1$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Llenovo/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;-><init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;)V

    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;->this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;

    # getter for: Llenovo/design/widget/FloatingActionButtonEclairMr1;->mElevation:F
    invoke-static {v0}, Llenovo/design/widget/FloatingActionButtonEclairMr1;->access$400(Llenovo/design/widget/FloatingActionButtonEclairMr1;)F

    move-result v0

    return v0
.end method
