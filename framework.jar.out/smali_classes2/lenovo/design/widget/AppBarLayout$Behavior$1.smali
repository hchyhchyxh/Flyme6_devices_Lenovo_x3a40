.class Llenovo/design/widget/AppBarLayout$Behavior$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/AppBarLayout$Behavior;

.field final synthetic val$child:Llenovo/design/widget/AppBarLayout;

.field final synthetic val$coordinatorLayout:Llenovo/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/AppBarLayout$Behavior;Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Llenovo/design/widget/AppBarLayout$Behavior$1;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    iput-object p2, p0, Llenovo/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Llenovo/design/widget/CoordinatorLayout;

    iput-object p3, p0, Llenovo/design/widget/AppBarLayout$Behavior$1;->val$child:Llenovo/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Llenovo/design/widget/ValueAnimatorCompat;)V
    .locals 4
    .param p1, "animator"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 879
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior$1;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Llenovo/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Llenovo/design/widget/CoordinatorLayout;

    iget-object v2, p0, Llenovo/design/widget/AppBarLayout$Behavior$1;->val$child:Llenovo/design/widget/AppBarLayout;

    invoke-virtual {p1}, Llenovo/design/widget/ValueAnimatorCompat;->getAnimatedIntValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Llenovo/design/widget/AppBarLayout$Behavior;->setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)I

    .line 881
    return-void
.end method
