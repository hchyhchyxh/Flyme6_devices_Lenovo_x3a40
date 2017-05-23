.class Landroid/widget/lenovoweather/DrawItem_Base$Animator;
.super Ljava/lang/Object;
.source "DrawItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Animator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    }
.end annotation


# instance fields
.field private mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

.field private mEnd:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

.field private mEnded:Z

.field private mFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mTimeStart:J

.field private mTimes:I

.field private mVisibleEnd:Z

.field private mVisibleEnd_On:Z

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Base;


# direct methods
.method constructor <init>(Landroid/widget/lenovoweather/DrawItem_Base;)V
    .locals 1

    .prologue
    .line 858
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    .line 1214
    return-void
.end method

.method static synthetic access$000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 858
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->start(IJ)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/lenovoweather/DrawItem_Base$Animator;J)V
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p1, "x1"    # J

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->forceEnd(J)V

    return-void
.end method

.method static synthetic access$3400(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .prologue
    .line 858
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mId:I

    return v0
.end method

.method static synthetic access$3402(Landroid/widget/lenovoweather/DrawItem_Base$Animator;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p1, "x1"    # I

    .prologue
    .line 858
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mId:I

    return p1
.end method

.method static synthetic access$3702(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p1, "x1"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd_On:Z

    return p1
.end method

.method static synthetic access$3802(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p1, "x1"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd:Z

    return p1
.end method

.method static synthetic access$3900(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p1, "x1"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "x2"    # Lorg/w3c/dom/Node;
    .param p3, "x3"    # I

    .prologue
    .line 858
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->loadFrame(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    .prologue
    .line 858
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    return-object v0
.end method

.method private forceEnd(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 1060
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    const-string v0, "DrawItem_Base"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animator.forceEndlong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    if-eqz v0, :cond_1

    .line 1064
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->getOneDuration()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    .line 1065
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    .line 1067
    invoke-virtual {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->update(J)V

    .line 1069
    :cond_1
    return-void
.end method

.method private getOneDuration()I
    .locals 3

    .prologue
    .line 1073
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    const-string v1, "DrawItem_Base"

    const-string v2, "Animator.getOneDuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1078
    .local v0, "size":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1080
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v1

    .line 1083
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFrame(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;I)V
    .locals 10
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;
    .param p3, "type"    # I

    .prologue
    const/4 v9, 0x1

    .line 894
    sget-object v6, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 895
    const-string v6, "DrawItem_Base"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animator.loadFrame CodeThemeScript1Plug "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "int "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_0
    new-instance v1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;-><init>(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Landroid/widget/lenovoweather/DrawItem_Base$1;)V

    .line 902
    .local v1, "frame":Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 903
    .local v2, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v2, :cond_8

    .line 904
    const/4 v3, 0x0

    .line 905
    .local v3, "node":Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 908
    .local v5, "value":Ljava/lang/String;
    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v1, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4102(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 909
    const-string v6, "duration"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 911
    if-eqz v3, :cond_1

    .line 912
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 913
    if-eqz v5, :cond_1

    .line 915
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4102(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_1
    :goto_0
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v6

    if-ge v6, v9, :cond_2

    .line 922
    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v1, v9}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4102(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 926
    :cond_2
    const-string v6, "offsetX"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 928
    if-eqz v3, :cond_3

    .line 929
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 930
    if-eqz v5, :cond_3

    .line 932
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4402(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 933
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4502(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 941
    :cond_3
    :goto_1
    const-string v6, "offsetY"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 943
    if-eqz v3, :cond_4

    .line 944
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 945
    if-eqz v5, :cond_4

    .line 947
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4602(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 948
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4702(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 956
    :cond_4
    :goto_2
    const-string v6, "scaleX"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 958
    if-eqz v3, :cond_5

    .line 959
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 960
    if-eqz v5, :cond_5

    .line 962
    :try_start_3
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4802(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F

    .line 963
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4902(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 971
    :cond_5
    :goto_3
    const-string v6, "scaleY"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 973
    if-eqz v3, :cond_6

    .line 974
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 975
    if-eqz v5, :cond_6

    .line 977
    :try_start_4
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5002(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F

    .line 978
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5102(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 986
    :cond_6
    :goto_4
    const-string v6, "rotate"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 988
    if-eqz v3, :cond_7

    .line 989
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 990
    if-eqz v5, :cond_7

    .line 992
    :try_start_5
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5202(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F

    .line 993
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5302(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1001
    :cond_7
    :goto_5
    const-string v6, "alpha"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1003
    if-eqz v3, :cond_8

    .line 1004
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1005
    if-eqz v5, :cond_8

    .line 1007
    :try_start_6
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5402(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F

    .line 1008
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5402(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F

    .line 1013
    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5502(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1021
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "value":Ljava/lang/String;
    :cond_8
    :goto_6
    const/4 v6, -0x1

    if-ne p3, v6, :cond_a

    .line 1022
    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .line 1038
    :cond_9
    :goto_7
    return-void

    .line 916
    .restart local v3    # "node":Lorg/w3c/dom/Node;
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 934
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 935
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 949
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 950
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 964
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 965
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 979
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 980
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 994
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 995
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    .line 1014
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v0

    .line 1015
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_6

    .line 1023
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    if-ne p3, v9, :cond_b

    .line 1024
    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    goto :goto_7

    .line 1026
    :cond_b
    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1027
    .local v4, "size":I
    if-nez v4, :cond_c

    .line 1028
    const/4 v6, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5602(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 1029
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v6

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v7

    add-int/2addr v6, v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeEnd:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5702(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 1030
    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1031
    :cond_c
    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    # invokes: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->match(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    invoke-static {v6, v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1033
    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeEnd:I
    invoke-static {v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5700(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5602(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 1034
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v6

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v7

    add-int/2addr v6, v7

    # setter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeEnd:I
    invoke-static {v1, v6}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5702(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I

    .line 1035
    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method private runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)V
    .locals 3
    .param p1, "frame"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const-string v0, "DrawItem_Base"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animator.runFrameFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1172
    :cond_1
    :goto_0
    return-void

    .line 1154
    :cond_2
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4500(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1155
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1157
    :cond_3
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4700(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1158
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1160
    :cond_4
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4900(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1161
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1163
    :cond_5
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1164
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5000(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1166
    :cond_6
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5300(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1167
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5200(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1169
    :cond_7
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5500(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;J)V
    .locals 5
    .param p1, "frame1"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p2, "frame2"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p3, "time"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1177
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    const-string v1, "DrawItem_Base"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animator.runFrameFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_0
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1211
    :cond_1
    :goto_0
    return-void

    .line 1185
    :cond_2
    long-to-float v1, p3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1187
    .local v0, "t":F
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4500(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1188
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v2

    int-to-float v2, v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I
    invoke-static {p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1191
    :cond_3
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4700(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1192
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v2

    int-to-float v2, v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I
    invoke-static {p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1195
    :cond_4
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4900(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1196
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F
    invoke-static {p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$4800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1199
    :cond_5
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1200
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5000(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F
    invoke-static {p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5000(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5000(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1203
    :cond_6
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5300(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1204
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5200(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F
    invoke-static {p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5200(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5200(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 1207
    :cond_7
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5500(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1208
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v1, v1, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private start(IJ)V
    .locals 4
    .param p1, "times"    # I
    .param p2, "timeStart"    # J

    .prologue
    .line 1042
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "DrawItem_Base"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animator.startint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    iput-wide p2, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    .line 1047
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    .line 1048
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    if-lez v0, :cond_1

    .line 1050
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnded:Z

    .line 1054
    :goto_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-direct {p0, v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)V

    .line 1055
    iget-wide v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    invoke-virtual {p0, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->update(J)V

    .line 1056
    return-void

    .line 1052
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnded:Z

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 881
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "DrawItem_Base"

    const-string v1, "Animator.toString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mVisibleEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd_On:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBegin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mFrame.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mTimeStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEnded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(J)V
    .locals 11
    .param p1, "now"    # J

    .prologue
    .line 1088
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1089
    const-string v5, "DrawItem_Base"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Animator.updatelong "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v5, v5, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 1142
    :cond_1
    :goto_0
    return-void

    .line 1095
    :cond_2
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->getOneDuration()I

    move-result v2

    .line 1096
    .local v2, "oneDuration":I
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1098
    .local v4, "size":I
    const/4 v3, 0x0

    .line 1100
    .local v3, "running":Z
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    if-lez v5, :cond_7

    .line 1101
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_3

    .line 1102
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)V

    .line 1130
    :goto_1
    if-eqz v3, :cond_1

    .line 1131
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    sub-long/2addr p1, v6

    .line 1132
    int-to-long v6, v2

    rem-long/2addr p1, v6

    .line 1133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_1

    .line 1134
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .line 1135
    .local v0, "frame":Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, p1, v6

    if-ltz v5, :cond_a

    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeEnd:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5700(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, p1, v6

    if-gez v5, :cond_a

    .line 1136
    # getter for: Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->access$5600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 1137
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mFrame:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-direct {p0, v0, v5, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;J)V

    goto :goto_0

    .line 1103
    .end local v0    # "frame":Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .end local v1    # "i":I
    :cond_3
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    mul-int/2addr v5, v2

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v5, p1, v6

    if-ltz v5, :cond_6

    .line 1105
    iget-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnded:Z

    if-nez v5, :cond_4

    .line 1106
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnded:Z

    .line 1107
    iget-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd_On:Z

    if-eqz v5, :cond_4

    .line 1108
    iget-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mVisibleEnd:Z

    if-eqz v5, :cond_5

    .line 1109
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v5, v5, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    :cond_4
    :goto_3
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)V

    goto :goto_1

    .line 1112
    :cond_5
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->this$0:Landroid/widget/lenovoweather/DrawItem_Base;

    iget-object v5, v5, Landroid/widget/lenovoweather/DrawItem_Base;->mView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1118
    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    .line 1120
    :cond_7
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimes:I

    if-gez v5, :cond_9

    .line 1121
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mTimeStart:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_8

    .line 1122
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)V

    goto :goto_1

    .line 1124
    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    .line 1127
    :cond_9
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Base$Animator;->runFrame(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)V

    goto/16 :goto_1

    .line 1133
    .restart local v0    # "frame":Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .restart local v1    # "i":I
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
