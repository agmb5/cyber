.class public Lcom/kalab/chess/enginesupport/ChessEngineResolver;
.super Ljava/lang/Object;
.source "ChessEngineResolver.java"


# static fields
.field private static final ENGINE_PROVIDER_LICENSE_MARKER:Ljava/lang/String; = "intent.chess.provider.ACTIVATION"

.field private static final ENGINE_PROVIDER_MARKER:Ljava/lang/String; = "intent.chess.provider.ENGINE"

.field private static final TAG:Ljava/lang/String; = "ChessEngineResolver"


# instance fields
.field private context:Landroid/content/Context;

.field licenseCheckActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->licenseCheckActivities:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    .line 59
    sget-object p1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object p1, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->target:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->sanitizeArmV6Target()V

    return-void
.end method

.method private addEngine(Ljava/util/List;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kalab/chess/enginesupport/ChessEngine;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p4

    .line 159
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "engine"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const-string v3, "filename"

    .line 160
    invoke-interface {v0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "name"

    .line 161
    invoke-interface {v0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "target"

    .line 162
    invoke-interface {v0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 165
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_1

    aget-object v0, v12, v15

    .line 166
    iget-object v2, v1, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->target:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, v1, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v9, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 172
    sget-object v2, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 174
    :goto_1
    new-instance v0, Lcom/kalab/chess/enginesupport/ChessEngine;

    iget-object v2, v1, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->licenseCheckActivities:Ljava/util/Map;

    .line 176
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    move-object v2, v0

    move-object v3, v11

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/kalab/chess/enginesupport/ChessEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v2, p1

    .line 174
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    move-object/from16 v2, p1

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseEngineListXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/kalab/chess/enginesupport/ChessEngine;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    :try_start_1
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->addEngine(Ljava/util/List;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 149
    :try_start_2
    sget-object v2, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 153
    sget-object p2, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private resolveEnginesForPackage(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kalab/chess/enginesupport/ChessEngine;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/kalab/chess/enginesupport/ChessEngine;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 111
    sget-object v0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found engine provider, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "chess.provider.engine.authority"

    .line 115
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 121
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "enginelist"

    const-string v2, "xml"

    .line 123
    invoke-virtual {p2, v0, v2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 125
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 127
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->parseEngineListXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 130
    sget-object p3, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method private resolveLicenseCheckActivitiesPerPackage()V
    .locals 4

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.chess.provider.ACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 99
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 101
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 102
    iget-object v3, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->licenseCheckActivities:Ljava/util/Map;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sanitizeArmV6Target()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->target:Ljava/lang/String;

    const-string v1, "armeabi-v6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "armeabi"

    .line 65
    iput-object v0, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->target:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkLicense(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 244
    sget-object v0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking license for engine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->resolveEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kalab/chess/enginesupport/ChessEngine;

    .line 247
    invoke-virtual {v1}, Lcom/kalab/chess/enginesupport/ChessEngine;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/kalab/chess/enginesupport/ChessEngine;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v1, p1, p2}, Lcom/kalab/chess/enginesupport/ChessEngine;->checkLicense(Landroid/app/Activity;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ensureEngineVersion(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)I
    .locals 4

    .line 197
    sget-object v0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking engine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 202
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v3, p3, :cond_1

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "engine is up-to-date"

    .line 223
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget p1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    move v1, p1

    goto :goto_1

    .line 206
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->resolveEngines()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kalab/chess/enginesupport/ChessEngine;

    .line 207
    invoke-virtual {v0}, Lcom/kalab/chess/enginesupport/ChessEngine;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/kalab/chess/enginesupport/ChessEngine;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_2

    .line 210
    :try_start_1
    sget-object p1, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    const-string p3, "engine is outdated"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/kalab/chess/enginesupport/ChessEngine;->copyToFiles(Landroid/content/ContentResolver;Ljava/io/File;)Ljava/io/File;

    .line 213
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 217
    :try_start_2
    sget-object p3, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 215
    sget-object p3, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 227
    :catch_2
    sget-object p1, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v1
.end method

.method public resolveEngines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kalab/chess/enginesupport/ChessEngine;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->resolveLicenseCheckActivitiesPerPackage()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.chess.provider.ENGINE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 79
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 82
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 83
    invoke-direct {p0, v0, v2, v3}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->resolveEnginesForPackage(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->target:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->sanitizeArmV6Target()V

    return-void
.end method
