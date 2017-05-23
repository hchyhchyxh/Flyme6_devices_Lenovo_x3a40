.class Landroid/widget/lenovoweather/TranslateItem_Base$Language;
.super Ljava/lang/Object;
.source "TranslateItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/TranslateItem_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Language"
.end annotation


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/lenovoweather/TranslateItem_Base;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/TranslateItem_Base;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->this$0:Landroid/widget/lenovoweather/TranslateItem_Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/TranslateItem_Base;Landroid/widget/lenovoweather/TranslateItem_Base$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/TranslateItem_Base;
    .param p2, "x1"    # Landroid/widget/lenovoweather/TranslateItem_Base$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;-><init>(Landroid/widget/lenovoweather/TranslateItem_Base;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/TranslateItem_Base$Language;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/lenovoweather/TranslateItem_Base$Language;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/TranslateItem_Base$Language;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/lenovoweather/TranslateItem_Base$Language;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "TranslateItem_Base"

    const-string v1, "Animator.toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mLocale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
