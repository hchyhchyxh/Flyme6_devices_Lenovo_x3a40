.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const v0, 0x109007a

    const v1, 0x10201ce

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 208
    .local v8, "isInDeveloperMode":Z
    :cond_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 210
    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 212
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 107
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "locales":[Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/internal/app/LocalePicker;->getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v7

    .line 113
    .local v7, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 114
    const-string v14, "ar-XB"

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    const-string v14, "en-XA"

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    const-string v14, "ro.lenovo.easyimage.code"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "country_code":Ljava/lang/String;
    const-string v14, "sg"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 122
    const-string v14, "en-ZG"

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    const-string v14, "my-ZG"

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    const v14, 0x1070008

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "specialLocaleCodes":[Ljava/lang/String;
    const v14, 0x1070009

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, "specialLocaleNames":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-direct {v6, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v6, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    .local v5, "locale":Ljava/lang/String;
    const/16 v14, 0x5f

    const/16 v15, 0x2d

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 133
    .local v3, "l":Ljava/util/Locale;
    if-eqz v3, :cond_2

    const-string v14, "und"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 138
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 142
    new-instance v14, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 149
    .local v9, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v14, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "zz"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 155
    iget-object v14, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v14, v12, v13}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 161
    new-instance v14, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-static {v3, v12, v13}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :cond_4
    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "displayName":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v14, v1, v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "l":Ljava/util/Locale;
    .end local v5    # "locale":Ljava/lang/String;
    .end local v9    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_5
    const v14, 0x11200be

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 175
    .local v11, "shallShowCountry":Z
    if-eqz v11, :cond_8

    .line 176
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 177
    .local v5, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v3, v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 178
    .restart local v3    # "l":Ljava/util/Locale;
    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "languageName":Ljava/lang/String;
    invoke-static {v3, v12, v13}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1    # "displayName":Ljava/lang/String;
    iget-object v14, v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 184
    const-string v14, "%s (%s)"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_7
    iput-object v1, v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    goto :goto_1

    .line 192
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "l":Ljava/util/Locale;
    .end local v4    # "languageName":Ljava/lang/String;
    .end local v5    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_8
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    return-object v6
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 247
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    aget-object v2, p2, v1

    .line 252
    :goto_1
    return-object v2

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "locales"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const v3, 0x104005a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "localeCodes":Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, "localeCodesArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v3, "tl-"

    const-string v4, "fil-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_1
    move-object v1, p0

    .end local v1    # "localeCodesArray":[Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v2, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v2
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 293
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 295
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 296
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 298
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 300
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 259
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 282
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 284
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 270
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 264
    return-void
.end method
