.class final Landroid/widget/lenovoweather/TranslateItem_Base;
.super Ljava/lang/Object;
.source "TranslateItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/TranslateItem_Base$1;,
        Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "TranslateItem_Base"


# instance fields
.field private mLanguage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/TranslateItem_Base$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mSrc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mLanguage:Ljava/util/ArrayList;

    .line 140
    return-void
.end method

.method private loadLanguage(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    .locals 10
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x0

    .line 79
    sget-object v3, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "TranslateItem_Base"

    const-string v4, "loadLanguage"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CodeThemeScript1Plug "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    :cond_0
    new-instance v0, Landroid/widget/lenovoweather/TranslateItem_Base$Language;

    invoke-direct {v0, p0, v9}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;-><init>(Landroid/widget/lenovoweather/TranslateItem_Base;Landroid/widget/lenovoweather/TranslateItem_Base$1;)V

    .line 85
    .local v0, "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 87
    .local v1, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_2

    .line 88
    const/4 v2, 0x0

    .line 91
    .local v2, "node":Lorg/w3c/dom/Node;
    # setter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;
    invoke-static {v0, v9}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$102(Landroid/widget/lenovoweather/TranslateItem_Base$Language;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    const-string v3, "locale"

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$102(Landroid/widget/lenovoweather/TranslateItem_Base$Language;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    :cond_1
    # setter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;
    invoke-static {v0, v9}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$202(Landroid/widget/lenovoweather/TranslateItem_Base$Language;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    const-string v3, "src"

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$202(Landroid/widget/lenovoweather/TranslateItem_Base$Language;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_2
    # getter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$100(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const/4 v0, 0x0

    .line 111
    :cond_3
    return-object v0
.end method


# virtual methods
.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 12
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    sget-object v7, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 32
    const-string v7, "TranslateItem_Base"

    const-string v8, "loadData"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CodeThemeScript1Plug "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 36
    .local v2, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v7, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 37
    const-string v7, "TranslateItem_Base"

    const-string v8, "loadData"

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "namedNodeMap "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 40
    const/4 v3, 0x0

    .line 43
    .local v3, "node":Lorg/w3c/dom/Node;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mSrc:Ljava/lang/String;

    .line 44
    const-string v7, "src"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mSrc:Ljava/lang/String;

    .line 50
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v7, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mSrc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    :cond_3
    :goto_0
    return v5

    .line 54
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 55
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    sget-object v7, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 56
    const-string v7, "TranslateItem_Base"

    const-string v8, "loadData"

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nodeList "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    :cond_5
    if-eqz v4, :cond_7

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 59
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 60
    .restart local v3    # "node":Lorg/w3c/dom/Node;
    const-string v7, "Language"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 61
    invoke-direct {p0, p1, v3}, Landroid/widget/lenovoweather/TranslateItem_Base;->loadLanguage(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Landroid/widget/lenovoweather/TranslateItem_Base$Language;

    move-result-object v1

    .line 62
    .local v1, "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    if-eqz v1, :cond_6

    .line 63
    iget-object v7, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mLanguage:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v1    # "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_7
    iget-object v7, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mLanguage:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    move v5, v6

    .line 73
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "TranslateItem_Base"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mLanguage.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mLanguage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method translate(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "fullMatch"    # Z

    .prologue
    .line 116
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "TranslateItem_Base"

    const-string v3, "translate"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boolean "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    if-eqz p3, :cond_2

    .line 122
    iget-object v2, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mLanguage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/TranslateItem_Base$Language;

    .line 123
    .local v1, "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    # getter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$100(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    # getter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$200(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    :goto_0
    return-object v2

    .line 128
    :cond_2
    iget-object v2, p0, Landroid/widget/lenovoweather/TranslateItem_Base;->mLanguage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/TranslateItem_Base$Language;

    .line 129
    .restart local v1    # "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    # getter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mLocale:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$100(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    # getter for: Landroid/widget/lenovoweather/TranslateItem_Base$Language;->mSrc:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/lenovoweather/TranslateItem_Base$Language;->access$200(Landroid/widget/lenovoweather/TranslateItem_Base$Language;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 136
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "language":Landroid/widget/lenovoweather/TranslateItem_Base$Language;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
