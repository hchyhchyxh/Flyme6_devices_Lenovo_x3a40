.class Llenovo/design/widget/ValueAnimatorCompat;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/ValueAnimatorCompat$Impl;,
        Llenovo/design/widget/ValueAnimatorCompat$Creator;,
        Llenovo/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;,
        Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;,
        Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private final mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;


# direct methods
.method constructor <init>(Llenovo/design/widget/ValueAnimatorCompat$Impl;)V
    .locals 0
    .param p1, "impl"    # Llenovo/design/widget/ValueAnimatorCompat$Impl;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    .line 113
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->cancel()V

    .line 185
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->end()V

    .line 193
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFloatValue()F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFraction()F

    move-result v0

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->getAnimatedIntValue()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 180
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setDuration(I)V

    .line 181
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 172
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1, p2}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setFloatValues(FF)V

    .line 173
    return-void
.end method

.method public setIntValues(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 164
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1, p2}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setIntValues(II)V

    .line 165
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 124
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    return-void
.end method

.method public setListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    new-instance v1, Llenovo/design/widget/ValueAnimatorCompat$2;

    invoke-direct {v1, p0, p1}, Llenovo/design/widget/ValueAnimatorCompat$2;-><init>(Llenovo/design/widget/ValueAnimatorCompat;Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setListener(Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setListener(Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    goto :goto_0
.end method

.method public setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "updateListener"    # Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    new-instance v1, Llenovo/design/widget/ValueAnimatorCompat$1;

    invoke-direct {v1, p0, p1}, Llenovo/design/widget/ValueAnimatorCompat$1;-><init>(Llenovo/design/widget/ValueAnimatorCompat;Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Llenovo/design/widget/ValueAnimatorCompat;->mImpl:Llenovo/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat$Impl;->start()V

    .line 117
    return-void
.end method
