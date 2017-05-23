.class Llenovo/design/widget/TextInputLayout$4;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/TextInputLayout;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Llenovo/design/widget/TextInputLayout$4;->this$0:Llenovo/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 490
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout$4;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;
    invoke-static {v0}, Llenovo/design/widget/TextInputLayout;->access$300(Llenovo/design/widget/TextInputLayout;)Llenovo/design/widget/CollapsingTextHelper;

    move-result-object v0

    invoke-virtual {p1}, Llenovo/design/widget/ValueAnimatorCompat;->getAnimatedFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 491
    return-void
.end method
