.class public Lcom/lenovo/internal/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;,
        Lcom/lenovo/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 75
    sget-object v0, Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object p1, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/internal/view/SupportMenuInflater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/SupportMenuInflater;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/internal/view/SupportMenuInflater;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/SupportMenuInflater;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/internal/view/SupportMenuInflater;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/SupportMenuInflater;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/internal/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/internal/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/internal/view/SupportMenuInflater;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/view/SupportMenuInflater;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 221
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 227
    .end local p1    # "owner":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 224
    .restart local p1    # "owner":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "owner":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private getRealOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/internal/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v2, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;-><init>(Lcom/lenovo/internal/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 137
    .local v2, "menuState":Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 139
    .local v0, "eventType":I
    const/4 v1, 0x0

    .line 140
    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    .line 144
    .local v6, "unknownTagName":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 148
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 157
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 158
    .local v3, "reachedEndOfMenu":Z
    :goto_1
    if-nez v3, :cond_b

    .line 159
    packed-switch v0, :pswitch_data_0

    .line 209
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 152
    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting menu, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 154
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 155
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    goto :goto_0

    .line 161
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_0
    if-nez v1, :cond_1

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5    # "tagName":Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 167
    invoke-virtual {v2, p2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 168
    :cond_4
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 169
    invoke-virtual {v2, p2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 170
    :cond_5
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 172
    invoke-virtual {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 175
    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, p1, p2, v4}, Lcom/lenovo/internal/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_2

    .line 177
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_6
    const/4 v1, 0x1

    .line 178
    move-object v6, v5

    .line 180
    goto :goto_2

    .line 183
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 184
    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 185
    const/4 v1, 0x0

    .line 186
    const/4 v6, 0x0

    goto :goto_2

    .line 187
    :cond_7
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 188
    invoke-virtual {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    .line 189
    :cond_8
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 192
    invoke-virtual {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_1

    .line 193
    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;
    invoke-static {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->access$000(Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;)Llenovo/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_9

    # getter for: Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Llenovo/view/ActionProvider;
    invoke-static {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->access$000(Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;)Llenovo/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Llenovo/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 195
    invoke-virtual {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto/16 :goto_2

    .line 197
    :cond_9
    invoke-virtual {v2}, Lcom/lenovo/internal/view/SupportMenuInflater$MenuState;->addItem()V

    goto/16 :goto_2

    .line 200
    :cond_a
    const-string v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 206
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 211
    :cond_b
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .locals 5
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 109
    instance-of v3, p2, Lcom/lenovo/internal/view/SupportMenu;

    if-nez v3, :cond_1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v2, 0x0

    .line 116
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 119
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Lcom/lenovo/internal/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 120
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
