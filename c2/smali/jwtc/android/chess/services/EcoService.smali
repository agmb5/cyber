.class public Ljwtc/android/chess/services/EcoService;
.super Ljava/lang/Object;
.source "EcoService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EcoService"


# instance fields
.field private _jArrayECO:Lorg/json/JSONArray;

.field private _sPrevECO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Ljwtc/android/chess/services/EcoService;->_jArrayECO:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/services/EcoService;)Lorg/json/JSONArray;
    .locals 0

    .line 16
    iget-object p0, p0, Ljwtc/android/chess/services/EcoService;->_jArrayECO:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$002(Ljwtc/android/chess/services/EcoService;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 16
    iput-object p1, p0, Ljwtc/android/chess/services/EcoService;->_jArrayECO:Lorg/json/JSONArray;

    return-object p1
.end method

.method private getECOInfo(ILjava/util/ArrayList;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljwtc/chess/PGNEntry;",
            ">;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "a"

    const-string v1, "v"

    .line 70
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_4

    .line 71
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/chess/PGNEntry;

    const/4 v4, 0x0

    .line 73
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 74
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "m"

    .line 75
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v2, Ljwtc/chess/PGNEntry;->_sMove:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "n"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 80
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 81
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljwtc/android/chess/services/EcoService;->getECOInfo(ILjava/util/ArrayList;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v3, :cond_2

    return-object p3

    :cond_2
    return-object v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-object v3
.end method


# virtual methods
.method public getEco(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljwtc/chess/PGNEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Ljwtc/android/chess/services/EcoService;->_jArrayECO:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, v1, p1, v0}, Ljwtc/android/chess/services/EcoService;->getECOInfo(ILjava/util/ArrayList;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "No ECO"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "EcoService"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Ljwtc/android/chess/services/EcoService;->_sPrevECO:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Ljwtc/android/chess/services/EcoService;->_sPrevECO:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 61
    iput-object p1, p0, Ljwtc/android/chess/services/EcoService;->_sPrevECO:Ljava/lang/String;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(Landroid/content/res/AssetManager;)V
    .locals 2

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Ljwtc/android/chess/services/EcoService;->_sPrevECO:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Ljwtc/android/chess/services/EcoService;->_jArrayECO:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/services/EcoService$1;

    invoke-direct {v1, p0, p1}, Ljwtc/android/chess/services/EcoService$1;-><init>(Ljwtc/android/chess/services/EcoService;Landroid/content/res/AssetManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
