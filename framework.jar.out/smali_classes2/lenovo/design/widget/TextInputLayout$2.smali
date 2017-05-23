.class Llenovo/design/widget/TextInputLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
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
    .line 352
    iput-object p1, p0, Llenovo/design/widget/TextInputLayout$2;->this$0:Llenovo/design/widget/TextInputLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 355
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout$2;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;
    invoke-static {v0}, Llenovo/design/widget/TextInputLayout;->access$200(Llenovo/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    return-void
.end method
