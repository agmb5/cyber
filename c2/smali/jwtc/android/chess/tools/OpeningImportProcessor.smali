.class public Ljwtc/android/chess/tools/OpeningImportProcessor;
.super Ljwtc/android/chess/tools/PGNProcessor;
.source "OpeningImportProcessor.java"


# instance fields
.field private _arrMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/chess/PGNEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _jArray:Lorg/json/JSONArray;

.field private _sECO:Ljava/lang/String;

.field private _sName:Ljava/lang/String;

.field private _sVariation:Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

.field private gameApi:Ljwtc/android/chess/services/GameApi;


# direct methods
.method constructor <init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljwtc/android/chess/tools/PGNProcessor;-><init>(ILandroid/os/Handler;)V

    .line 27
    iput-object p3, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 29
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_jArray:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method protected findOrInsertEntry(Lorg/json/JSONArray;Ljwtc/chess/PGNEntry;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v4, "v"

    const-string v5, "n"

    const-string v6, "e"

    const-string v7, "m"

    const-string v8, "a"

    if-ge v1, v3, :cond_3

    const/4 v3, 0x1

    .line 59
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p2, Ljwtc/chess/PGNEntry;->_sMove:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_2

    .line 65
    :try_start_1
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    goto :goto_1

    .line 68
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 69
    invoke-virtual {v9, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :goto_1
    iget-object v7, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_arrMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 73
    iget-object v2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sECO:Ljava/lang/String;

    invoke-virtual {v9, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sName:Ljava/lang/String;

    invoke-virtual {v9, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sVariation:Ljava/lang/String;

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 77
    :cond_1
    iget-object v4, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_arrMoves:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljwtc/chess/PGNEntry;

    invoke-virtual {p0, v2, v4}, Ljwtc/android/chess/tools/OpeningImportProcessor;->findOrInsertEntry(Lorg/json/JSONArray;Ljwtc/chess/PGNEntry;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    const/4 v2, 0x1

    :catch_1
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 92
    iget-object p2, p2, Ljwtc/chess/PGNEntry;->_sMove:Ljava/lang/String;

    invoke-virtual {v1, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object p2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_arrMoves:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 96
    iget-object p2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sECO:Ljava/lang/String;

    invoke-virtual {v1, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object p2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sName:Ljava/lang/String;

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object p2, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sVariation:Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    iget-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_arrMoves:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 104
    iget-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_arrMoves:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljwtc/chess/PGNEntry;

    invoke-virtual {p0, v2, p1}, Ljwtc/android/chess/tools/OpeningImportProcessor;->findOrInsertEntry(Lorg/json/JSONArray;Ljwtc/chess/PGNEntry;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_jArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processPGN(Ljava/lang/String;)Z
    .locals 2

    .line 34
    iget-object v0, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 35
    iget-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "Event"

    invoke-virtual {p1, v1}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sECO:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "White"

    invoke-virtual {p1, v1}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sName:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "Black"

    invoke-virtual {p1, v1}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sVariation:Ljava/lang/String;

    const-string v1, "black ?"

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 39
    iput-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_sVariation:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->getPGNEntries()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_arrMoves:Ljava/util/ArrayList;

    .line 43
    iget-object v1, p0, Ljwtc/android/chess/tools/OpeningImportProcessor;->_jArray:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljwtc/chess/PGNEntry;

    invoke-virtual {p0, v1, p1}, Ljwtc/android/chess/tools/OpeningImportProcessor;->findOrInsertEntry(Lorg/json/JSONArray;Ljwtc/chess/PGNEntry;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
