.class public final Llenovo/design/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mParent:Llenovo/design/widget/TabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Llenovo/design/widget/TabLayout;)V
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    .line 907
    iput-object p1, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    .line 908
    return-void
.end method

.method static synthetic access$000(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 888
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 1126
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 990
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Llenovo/design/widget/TabLayout;->selectTab(Llenovo/design/widget/TabLayout$Tab;)V

    .line 1076
    return-void
.end method

.method public setContentDescription(I)Llenovo/design/widget/TabLayout$Tab;
    .locals 1
    .param p1, "resId"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Llenovo/design/widget/TabLayout$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 1110
    iput-object p1, p0, Llenovo/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1111
    iget v0, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 1112
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    iget v1, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    # invokes: Llenovo/design/widget/TabLayout;->updateTab(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout;->access$100(Llenovo/design/widget/TabLayout;I)V

    .line 1114
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Llenovo/design/widget/TabLayout$Tab;
    .locals 2
    .param p1, "layoutResId"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 979
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Llenovo/design/widget/TabLayout$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 957
    iput-object p1, p0, Llenovo/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 958
    iget v0, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 959
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    iget v1, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    # invokes: Llenovo/design/widget/TabLayout;->updateTab(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout;->access$100(Llenovo/design/widget/TabLayout;I)V

    .line 961
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Llenovo/design/widget/TabLayout$Tab;
    .locals 1
    .param p1, "resId"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Llenovo/design/widget/TabLayout$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 1025
    iput-object p1, p0, Llenovo/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1026
    iget v0, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 1027
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    iget v1, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    # invokes: Llenovo/design/widget/TabLayout;->updateTab(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout;->access$100(Llenovo/design/widget/TabLayout;I)V

    .line 1029
    :cond_0
    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1004
    iput p1, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    .line 1005
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Llenovo/design/widget/TabLayout$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 926
    iput-object p1, p0, Llenovo/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 927
    return-object p0
.end method

.method public setText(I)Llenovo/design/widget/TabLayout$Tab;
    .locals 1
    .param p1, "resId"    # I
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Llenovo/design/widget/TabLayout$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 1052
    iput-object p1, p0, Llenovo/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1053
    iget v0, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 1054
    iget-object v0, p0, Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;

    iget v1, p0, Llenovo/design/widget/TabLayout$Tab;->mPosition:I

    # invokes: Llenovo/design/widget/TabLayout;->updateTab(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout;->access$100(Llenovo/design/widget/TabLayout;I)V

    .line 1056
    :cond_0
    return-object p0
.end method
