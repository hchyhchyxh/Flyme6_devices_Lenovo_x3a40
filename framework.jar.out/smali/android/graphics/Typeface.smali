.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String; = null

.field static final ZAWGYI_FONTS_CONFIG:Ljava/lang/String; = "fonts_zg.xml"

.field private static isForceToSystemDefault:Z

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static sThemeFontPath:Ljava/lang/String;

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 55
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 367
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 369
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 370
    nop

    nop

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 374
    invoke-static {}, Landroid/graphics/Typeface;->isFontSystemDefault()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 375
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 376
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 377
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 378
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif-condensed"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :goto_0
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 433
    sput-object v1, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    return-void

    .line 380
    :cond_0
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 381
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 382
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 266
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 271
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 272
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 146
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 147
    :cond_0
    const/4 p1, 0x0

    .line 149
    :cond_1
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "ni":J
    if-eqz p0, :cond_4

    .line 152
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_3

    move-object v3, p0

    .line 176
    :cond_2
    :goto_0
    return-object v3

    .line 156
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 160
    :cond_4
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 162
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 163
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 164
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_2

    .line 169
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 170
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_6

    .line 171
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 172
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 174
    :cond_6
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 128
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 196
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 197
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 199
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 202
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 239
    array-length v2, p0

    new-array v1, v2, [J

    .line 240
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 241
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 254
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 255
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 256
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 259
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 223
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 224
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 226
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 229
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 185
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static forceToSystemDefault()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/Typeface;->isForceToSystemDefault:Z

    .line 482
    invoke-static {}, Landroid/graphics/Typeface;->setThemeFont()V

    .line 483
    return-void
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontPath()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "fontPath":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontName()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "fontName":Ljava/lang/String;
    sget-boolean v2, Landroid/graphics/Typeface;->isForceToSystemDefault:Z

    if-eqz v2, :cond_0

    .line 493
    const-string v1, ""

    .line 495
    :cond_0
    return-object v1
.end method

.method private static init()V
    .locals 26

    .prologue
    .line 289
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v19

    .line 290
    .local v19, "systemFontConfigLocation":Ljava/io/File;
    const/4 v6, 0x0

    .line 291
    .local v6, "configFilename":Ljava/io/File;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "ct":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    .line 293
    .local v17, "language":Ljava/lang/String;
    sget-object v23, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "hj dbg: init() start, current country="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",language id="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v23, "ZG"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 295
    sget-object v23, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v24, "hj dbg: init() start, Zawgyi font for ZG locales. "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v6, Ljava/io/File;

    .end local v6    # "configFilename":Ljava/io/File;
    const-string v23, "fonts_zg.xml"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .restart local v6    # "configFilename":Ljava/io/File;
    :goto_0
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 303
    .local v14, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v14}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v12

    .line 305
    .local v12, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v11, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    iget-object v0, v12, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_3

    .line 309
    iget-object v0, v12, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/FontListParser$Family;

    .line 310
    .local v9, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v15, :cond_0

    iget-object v0, v9, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 311
    :cond_0
    invoke-static {v9}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 308
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 298
    .end local v9    # "f":Landroid/graphics/FontListParser$Family;
    .end local v11    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v12    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .end local v15    # "i":I
    :cond_2
    new-instance v6, Ljava/io/File;

    .end local v6    # "configFilename":Ljava/io/File;
    const-string v23, "fonts.xml"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "configFilename":Ljava/io/File;
    goto :goto_0

    .line 314
    .restart local v11    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v12    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v15    # "i":I
    :cond_3
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/graphics/FontFamily;

    sput-object v23, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 319
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFont()V

    .line 326
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v20, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v15, 0x0

    :goto_2
    iget-object v0, v12, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_6

    .line 329
    iget-object v0, v12, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/FontListParser$Family;

    .line 330
    .restart local v9    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v9, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 331
    if-nez v15, :cond_5

    .line 334
    sget-object v21, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 340
    .local v21, "typeface":Landroid/graphics/Typeface;
    :goto_3
    iget-object v0, v9, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v21    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 336
    :cond_5
    invoke-static {v9}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v13

    .line 337
    .local v13, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v10, v0, [Landroid/graphics/FontFamily;

    const/16 v23, 0x0

    aput-object v13, v10, v23

    .line 338
    .local v10, "families":[Landroid/graphics/FontFamily;
    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v21

    .restart local v21    # "typeface":Landroid/graphics/Typeface;
    goto :goto_3

    .line 343
    .end local v9    # "f":Landroid/graphics/FontListParser$Family;
    .end local v10    # "families":[Landroid/graphics/FontFamily;
    .end local v13    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v21    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v12, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 344
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 345
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v18, v5

    .line 346
    .local v18, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v22, v0

    .line 347
    .local v22, "weight":I
    const/16 v23, 0x190

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 348
    new-instance v18, Landroid/graphics/Typeface;

    .end local v18    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 350
    .restart local v18    # "newFace":Landroid/graphics/Typeface;
    :cond_7
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 354
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v11    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v12    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "newFace":Landroid/graphics/Typeface;
    .end local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v22    # "weight":I
    :catch_0
    move-exception v8

    .line 355
    .local v8, "e":Ljava/lang/RuntimeException;
    sget-object v23, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v24, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void

    .line 352
    .restart local v11    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v12    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v14    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v15    # "i":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_8
    :try_start_2
    sput-object v20, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 357
    .end local v11    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v12    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v14    # "fontsIn":Ljava/io/FileInputStream;
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v8

    .line 358
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v23, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error opening "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 359
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    .line 360
    .local v8, "e":Ljava/io/IOException;
    sget-object v23, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 361
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 362
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v23, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "XML parse exception for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static isFontSystemDefault()Z
    .locals 2

    .prologue
    .line 504
    const-string v0, ""

    sget-object v1, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isStrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 486
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 275
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 277
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 279
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v1
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static reInit()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 437
    sget-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 438
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    .line 439
    const-string v2, "DEFAULT"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const-string v2, "DEFAULT_BOLD"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    invoke-static {}, Landroid/graphics/Typeface;->isFontSystemDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v0, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v0, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    :goto_0
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 457
    return-void

    .line 446
    :cond_0
    const-string v2, "SANS_SERIF"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v2, "SERIF"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v2, "MONOSPACE"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif-condensed"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 97
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 98
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 99
    return-void
.end method

.method private static setDefaultFont()V
    .locals 7

    .prologue
    .line 508
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontPath()Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "fontPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/Typeface;->isStrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 510
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    :try_start_0
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 514
    .local v3, "themeFont":Landroid/graphics/Typeface;
    if-eqz v3, :cond_1

    .line 515
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->isDefaultAndroidFont()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFontToSystemDefault()V

    .line 520
    :goto_0
    sput-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    .line 537
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "themeFont":Landroid/graphics/Typeface;
    :goto_1
    return-void

    .line 518
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "themeFont":Landroid/graphics/Typeface;
    :cond_0
    invoke-static {v3}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v3    # "themeFont":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFromFile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-nez v4, :cond_2

    .line 530
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFontToSystemDefault()V

    goto :goto_1

    .line 532
    :cond_2
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "THEME Font not found, Font left untouched! path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 535
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFontToSystemDefault()V

    goto :goto_1
.end method

.method private static setDefaultFontToSystemDefault()V
    .locals 1

    .prologue
    .line 499
    sget-object v0, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 500
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    .line 501
    return-void
.end method

.method private static setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 544
    :try_start_0
    const-class v3, Landroid/graphics/Typeface;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 545
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 546
    .local v0, "accessibleBackup":Z
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 547
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "accessibleBackup":Z
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setThemeFont()V
    .locals 5

    .prologue
    .line 463
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontPath()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "fontPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Typeface;->isStrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setThemeFont(): Is Not a file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 471
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setThemeFont(): sThemeFontPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fontPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    :cond_1
    invoke-static {}, Landroid/graphics/Typeface;->reInit()V

    goto :goto_0

    .line 475
    :cond_2
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setThemeFont(): FontPath Not Changed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 411
    if-ne p0, p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 412
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 414
    check-cast v0, Landroid/graphics/Typeface;

    .line 416
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 403
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 407
    return-void

    .line 405
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 425
    const/16 v0, 0x11

    .line 426
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 427
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 428
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
