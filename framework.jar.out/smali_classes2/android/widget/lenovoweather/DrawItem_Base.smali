.class abstract Landroid/widget/lenovoweather/DrawItem_Base;
.super Landroid/widget/lenovoweather/EventItem_Base;
.source "DrawItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/DrawItem_Base$1;,
        Landroid/widget/lenovoweather/DrawItem_Base$Animator;,
        Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Base"


# instance fields
.field private mAlignX:I

.field private mAlignY:I

.field mAnimator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Base$Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mH:I

.field mType:Ljava/lang/String;

.field mView:Landroid/view/View;

.field private mW:I

.field private mX:I

.field private mY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/lenovoweather/EventItem_Base;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    .line 858
    return-void
.end method

.method private loadAnimator(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V
    .locals 12
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    .line 626
    sget-object v9, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 627
    const-string v9, "DrawItem_Base"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAnimator CodeThemeScript1Plug "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    const/4 v0, 0x0

    .line 631
    .local v0, "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 633
    .local v4, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v4, :cond_2

    .line 634
    const/4 v5, 0x0

    .line 635
    .local v5, "node":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    .line 638
    .local v8, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 639
    .local v3, "id":I
    const-string v9, "id"

    invoke-interface {v4, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 640
    if-eqz v5, :cond_1

    .line 641
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 642
    if-eqz v8, :cond_1

    .line 644
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 651
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .end local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    invoke-direct {v0, p0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;)V

    .line 652
    .restart local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mId:I
    invoke-static {v0, v3}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3402(Landroid/widget/lenovoweather/DrawItem_Base$Animator;I)I

    .line 653
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    const/4 v9, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd_On:Z
    invoke-static {v0, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3702(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Z)Z

    .line 657
    const-string v9, "visibleEnd"

    invoke-interface {v4, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 659
    if-eqz v5, :cond_2

    .line 660
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 661
    if-eqz v8, :cond_2

    .line 662
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd:Z
    invoke-static {v0, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3802(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Z)Z

    .line 663
    const/4 v9, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd_On:Z
    invoke-static {v0, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3702(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Z)Z

    .line 668
    .end local v3    # "id":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_8

    .line 669
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 670
    .local v6, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_6

    .line 671
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 672
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 673
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    const-string v9, "Frame"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 674
    const/4 v9, 0x0

    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->loadFrame(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V
    invoke-static {v0, p1, v5, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3900(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V

    .line 671
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    .end local v2    # "i":I
    .end local v6    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v3    # "id":I
    .restart local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 675
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "id":I
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v6    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string v9, "FrameBegin"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 677
    const/4 v9, -0x1

    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->loadFrame(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V
    invoke-static {v0, p1, v5, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3900(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V

    goto :goto_2

    .line 678
    :cond_5
    const-string v9, "FrameEnd"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 680
    const/4 v9, 0x1

    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->loadFrame(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V
    invoke-static {v0, p1, v5, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3900(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V

    goto :goto_2

    .line 685
    .end local v2    # "i":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_6
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$4000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 687
    .local v7, "size":I
    add-int/lit8 v2, v7, -0x2

    .restart local v2    # "i":I
    :goto_3
    if-ltz v2, :cond_8

    .line 688
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$4000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    .line 689
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$4000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 687
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 693
    .end local v2    # "i":I
    .end local v6    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "size":I
    :cond_8
    return-void
.end method


# virtual methods
.method createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    .line 192
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    const v8, 0x7f080001

    invoke-virtual {v5, v8, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    const/4 v1, 0x1

    .line 195
    .local v1, "gravityX":I
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 196
    const/4 v1, 0x3

    .line 201
    :cond_1
    :goto_1
    const/16 v2, 0x10

    .line 202
    .local v2, "gravityY":I
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 203
    const/16 v2, 0x30

    .line 208
    :cond_2
    :goto_2
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mW:I

    iget v8, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mH:I

    or-int v9, v1, v2

    invoke-direct {v4, v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 211
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, 0x5

    if-ne v1, v5, :cond_5

    .line 212
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mX:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 217
    :goto_3
    const/16 v5, 0x50

    if-ne v2, v5, :cond_6

    .line 218
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mY:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 223
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 224
    .local v6, "timeStart":J
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .line 225
    .local v0, "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    const/4 v5, 0x0

    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->start(IJ)V
    invoke-static {v0, v5, v6, v7}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;IJ)V

    goto :goto_5

    .line 197
    .end local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .end local v2    # "gravityY":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "timeStart":J
    :cond_3
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 198
    const/4 v1, 0x5

    goto :goto_1

    .line 204
    .restart local v2    # "gravityY":I
    :cond_4
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    .line 205
    const/16 v2, 0x50

    goto :goto_2

    .line 214
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mX:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 220
    :cond_6
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mY:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 228
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "timeStart":J
    :cond_7
    invoke-virtual {p2, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V
    .locals 13
    .param p1, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p2, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 233
    sget-object v9, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 234
    const-string v9, "DrawItem_Base"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dealEvent EventDispatch_Base "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "EventItem_Base.EventListener "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    if-nez v9, :cond_2

    .line 346
    :cond_1
    return-void

    :cond_2
    move-object v5, p2

    .line 242
    check-cast v5, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .line 246
    .local v5, "listener":Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    iget-object v4, v5, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mEventItem:Landroid/widget/lenovoweather/EventItem_Base;

    check-cast v4, Landroid/widget/lenovoweather/DrawItem_Base;

    .line 247
    .local v4, "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 248
    .local v6, "now":J
    iget-object v9, v4, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .line 249
    .local v0, "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->forceEnd(J)V
    invoke-static {v0, v6, v7}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$100(Landroid/widget/lenovoweather/DrawItem_Base$Animator;J)V

    goto :goto_0

    .line 254
    .end local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    :cond_3
    iget-boolean v9, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mXYR_On:Z

    if-eqz v9, :cond_5

    .line 255
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXR_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 256
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    iget v10, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mXR:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 258
    :cond_4
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYR_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 259
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    iget v10, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mYR:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 264
    :cond_5
    iget-boolean v9, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mXYA_On:Z

    if-eqz v9, :cond_7

    .line 265
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXA_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 266
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    iget v10, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mXA:F

    iget-object v11, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    .line 269
    :cond_6
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYA_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 270
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    iget v10, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mYA:F

    iget-object v11, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setY(F)V

    .line 276
    :cond_7
    iget-boolean v9, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mT_On:Z

    if-eqz v9, :cond_d

    .line 277
    iget v8, p1, Landroid/widget/lenovoweather/EventDispatch_Base;->mT:F

    .line 278
    .local v8, "t":F
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 279
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v10

    int-to-float v10, v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 282
    :cond_8
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 283
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v10

    int-to-float v10, v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1100(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 286
    :cond_9
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 287
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v12

    sub-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 290
    :cond_a
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 291
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v12

    sub-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 294
    :cond_b
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 295
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v12

    sub-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotation(F)V

    .line 298
    :cond_c
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2100(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 299
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v12

    sub-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 306
    .end local v8    # "t":F
    :cond_d
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 307
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 309
    :cond_e
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 310
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 312
    :cond_f
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 313
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 315
    :cond_10
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 316
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 318
    :cond_11
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 319
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotation(F)V

    .line 321
    :cond_12
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 322
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 324
    :cond_13
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible_On:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$3000(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 325
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible:Z
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$3100(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 326
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_14
    :goto_1
    iget-object v4, v5, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mEventItem:Landroid/widget/lenovoweather/EventItem_Base;

    .end local v4    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    check-cast v4, Landroid/widget/lenovoweather/DrawItem_Base;

    .line 337
    .restart local v4    # "item":Landroid/widget/lenovoweather/DrawItem_Base;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 338
    iget-object v9, v4, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .line 339
    .restart local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAnimator:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$3200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;

    .line 340
    .local v1, "event":Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mId:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->access$3300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;)I

    move-result v9

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mId:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$3400(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)I

    move-result v10

    if-ne v9, v10, :cond_16

    .line 341
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mTimes:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->access$3500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;)I

    move-result v9

    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator;->start(IJ)V
    invoke-static {v0, v9, v6, v7}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->access$000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;IJ)V

    goto :goto_2

    .line 329
    .end local v0    # "animator":Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .end local v1    # "event":Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_17
    iget-object v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 11
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 60
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 61
    .local v2, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 63
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_e

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "node":Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 68
    .local v5, "value":Ljava/lang/String;
    iput v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mX:I

    .line 69
    const-string v7, "x"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 72
    if-eqz v5, :cond_0

    .line 74
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mX:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    iput v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mY:I

    .line 83
    const-string v7, "y"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 86
    if-eqz v5, :cond_1

    .line 88
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mY:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :cond_1
    :goto_1
    iput v8, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mW:I

    .line 97
    const-string v7, "w"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 100
    if-eqz v5, :cond_2

    .line 102
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mW:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :cond_2
    :goto_2
    iget v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mW:I

    if-gtz v7, :cond_3

    .line 109
    iput v8, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mW:I

    .line 113
    :cond_3
    iput v8, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mH:I

    .line 114
    const-string v7, "h"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_4

    .line 116
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 117
    if-eqz v5, :cond_4

    .line 119
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mH:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 125
    :cond_4
    :goto_3
    iget v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mH:I

    if-gtz v7, :cond_5

    .line 126
    iput v8, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mH:I

    .line 130
    :cond_5
    iput v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    .line 131
    const-string v7, "alignX"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_6

    .line 133
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 134
    if-eqz v5, :cond_6

    .line 136
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 142
    :cond_6
    :goto_4
    iget v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    if-gez v7, :cond_b

    .line 143
    iput v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    .line 149
    :cond_7
    :goto_5
    iput v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    .line 150
    const-string v6, "alignY"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_8

    .line 152
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz v5, :cond_8

    .line 155
    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 161
    :cond_8
    :goto_6
    iget v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    if-gez v6, :cond_c

    .line 162
    iput v9, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    .line 170
    :cond_9
    :goto_7
    if-eqz v4, :cond_d

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_d

    .line 172
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 173
    const-string v6, "Animator"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 174
    invoke-direct {p0, p1, v3}, Landroid/widget/lenovoweather/DrawItem_Base;->loadAnimator(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V

    .line 171
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 75
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 137
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 144
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    iget v7, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    if-lez v7, :cond_7

    .line 145
    iput v10, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    goto :goto_5

    .line 156
    :catch_5
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_6

    .line 163
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    iget v6, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    if-lez v6, :cond_9

    .line 164
    iput v10, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    goto :goto_7

    .line 179
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/EventItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v6

    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "value":Ljava/lang/String;
    :cond_e
    return v6
.end method

.method loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 10
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 352
    sget-object v7, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    const-string v7, "DrawItem_Base"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadEventListener  CodeThemeScript1Plug "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "EventDispatch_Base "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Node "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "EventItem_Base.EventListener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/EventItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 360
    const/4 v7, 0x0

    .line 620
    :goto_0
    return v7

    .line 363
    :cond_1
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .local v3, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    move-object v2, p4

    .line 364
    check-cast v2, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .line 366
    .local v2, "listener":Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    if-eqz v3, :cond_12

    .line 367
    const/4 v4, 0x0

    .line 368
    .local v4, "node":Lorg/w3c/dom/Node;
    const/4 v6, 0x0

    .line 371
    .local v6, "value":Ljava/lang/String;
    const-string v7, "offsetXR"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 372
    if-eqz v4, :cond_2

    .line 373
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_2

    .line 375
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXR_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 378
    :cond_2
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXR_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 379
    const-string v7, "offsetXA"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 381
    if-eqz v4, :cond_3

    .line 382
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 383
    if-eqz v6, :cond_3

    .line 384
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXA_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 387
    :cond_3
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXA_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 388
    const-string v7, "offsetX"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 390
    if-eqz v4, :cond_4

    .line 391
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 392
    if-eqz v6, :cond_4

    .line 394
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX:I
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I

    .line 395
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_4
    :goto_1
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2400(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 402
    const-string v7, "offsetXT"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 404
    if-eqz v4, :cond_5

    .line 405
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 406
    if-eqz v6, :cond_5

    .line 408
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT:I
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I

    .line 410
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetXT_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 411
    const/4 v7, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetX_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :cond_5
    :goto_2
    const-string v7, "offsetYR"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 423
    if-eqz v4, :cond_6

    .line 424
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 425
    if-eqz v6, :cond_6

    .line 426
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYR_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 429
    :cond_6
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYR_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 430
    const-string v7, "offsetYA"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 432
    if-eqz v4, :cond_7

    .line 433
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 434
    if-eqz v6, :cond_7

    .line 435
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYA_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 438
    :cond_7
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYA_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 439
    const-string v7, "offsetY"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 441
    if-eqz v4, :cond_8

    .line 442
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 443
    if-eqz v6, :cond_8

    .line 445
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY:I
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1002(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I

    .line 446
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 452
    :cond_8
    :goto_3
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 453
    const-string v7, "offsetYT"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 455
    if-eqz v4, :cond_9

    .line 456
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 457
    if-eqz v6, :cond_9

    .line 459
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT:I
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1102(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;I)I

    .line 461
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetYT_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 462
    const/4 v7, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mOffsetY_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 473
    :cond_9
    :goto_4
    const-string v7, "scaleX"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 474
    if-eqz v4, :cond_a

    .line 475
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 476
    if-eqz v6, :cond_a

    .line 478
    :try_start_4
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 479
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 485
    :cond_a
    :goto_5
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 486
    const-string v7, "scaleXT"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 488
    if-eqz v4, :cond_b

    .line 489
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 490
    if-eqz v6, :cond_b

    .line 492
    :try_start_5
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1402(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 493
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleXT_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 494
    const/4 v7, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleX_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 503
    :cond_b
    :goto_6
    const-string v7, "scaleY"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 504
    if-eqz v4, :cond_c

    .line 505
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 506
    if-eqz v6, :cond_c

    .line 508
    :try_start_6
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1602(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 509
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 515
    :cond_c
    :goto_7
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2700(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 516
    const-string v7, "scaleYT"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 518
    if-eqz v4, :cond_d

    .line 519
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 520
    if-eqz v6, :cond_d

    .line 522
    :try_start_7
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 523
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleYT_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 524
    const/4 v7, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mScaleY_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2702(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 533
    :cond_d
    :goto_8
    const-string v7, "rotate"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 534
    if-eqz v4, :cond_e

    .line 535
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 536
    if-eqz v6, :cond_e

    .line 538
    :try_start_8
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 539
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    .line 545
    :cond_e
    :goto_9
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2800(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 546
    const-string v7, "rotateT"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 548
    if-eqz v4, :cond_f

    .line 549
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 550
    if-eqz v6, :cond_f

    .line 552
    :try_start_9
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2002(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 553
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotateT_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$1802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 554
    const/4 v7, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mRotate_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2802(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 563
    :cond_f
    :goto_a
    const-string v7, "alpha"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 564
    if-eqz v4, :cond_10

    .line 565
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 566
    if-eqz v6, :cond_10

    .line 568
    :try_start_a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 569
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2200(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2202(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 572
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    .line 578
    :cond_10
    :goto_b
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2900(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 579
    const-string v7, "alphaT"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 581
    if-eqz v4, :cond_11

    .line 582
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 583
    if-eqz v6, :cond_11

    .line 585
    :try_start_b
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 586
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT:F
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;F)F

    .line 590
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlphaT_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2102(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 591
    const/4 v7, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mAlpha_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$2902(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    .line 600
    :cond_11
    :goto_c
    const-string v7, "visible"

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 601
    if-eqz v4, :cond_12

    .line 602
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 603
    if-eqz v6, :cond_12

    .line 604
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$3102(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 605
    const/4 v7, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->mVisible_On:Z
    invoke-static {v2, v7}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$3002(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Z)Z

    .line 610
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v6    # "value":Ljava/lang/String;
    :cond_12
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 611
    .local v5, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_14

    .line 612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_14

    .line 613
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 614
    .restart local v4    # "node":Lorg/w3c/dom/Node;
    const-string v7, "Animator"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 615
    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->loadAnimator(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V
    invoke-static {v2, p1, v4}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->access$3600(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)V

    .line 612
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 396
    .end local v1    # "i":I
    .end local v5    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 412
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 413
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 447
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 448
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 463
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 464
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_4

    .line 480
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 481
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_5

    .line 495
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 496
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6

    .line 510
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v0

    .line 511
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_7

    .line 525
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v0

    .line 526
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_8

    .line 540
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v0

    .line 541
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_9

    .line 555
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v0

    .line 556
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_a

    .line 573
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_a
    move-exception v0

    .line 574
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_b

    .line 592
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_b
    move-exception v0

    .line 593
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_c

    .line 620
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "DrawItem_Base"

    const-string v1, "toString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mAlignX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mAlignY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAlignY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mAnimator.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base;->mAnimator:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
