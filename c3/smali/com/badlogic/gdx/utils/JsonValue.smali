.class public Lcom/badlogic/gdx/utils/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;,
        Lcom/badlogic/gdx/utils/JsonValue$ValueType;,
        Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public child:Lcom/badlogic/gdx/utils/JsonValue;

.field private doubleValue:D

.field private longValue:J

.field public name:Ljava/lang/String;

.field public next:Lcom/badlogic/gdx/utils/JsonValue;

.field public parent:Lcom/badlogic/gdx/utils/JsonValue;

.field public prev:Lcom/badlogic/gdx/utils/JsonValue;

.field public size:I

.field private stringValue:Ljava/lang/String;

.field private type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Z)V

    return-void
.end method

.method private static indent(ILcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x9

    .line 1207
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static indent(ILjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x9

    .line 1212
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 1

    .line 1194
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p0, :cond_2

    .line 1195
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1194
    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 1

    .line 1200
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p0, :cond_1

    .line 1201
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1200
    :cond_0
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 4

    .line 966
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_3

    .line 967
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_0

    const-string p1, "{}"

    .line 968
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    .line 970
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    const/16 v0, 0x7b

    .line 972
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 974
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz p1, :cond_2

    .line 975
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x3a

    .line 976
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 977
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 978
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 974
    :cond_1
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d

    .line 982
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    .line 984
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 985
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_4

    const-string p1, "[]"

    .line 986
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    .line 988
    :cond_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    const/16 v0, 0x5b

    .line 990
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 991
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1
    if-eqz p1, :cond_6

    .line 992
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 993
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_5

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 991
    :cond_5
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 997
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 999
    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1000
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 1001
    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1002
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    .line 1003
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_9

    move-wide v0, v2

    .line 1004
    :cond_9
    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 1005
    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1006
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 1007
    :cond_b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1008
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 1009
    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p1, "null"

    .line 1010
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2
    return-void

    .line 1012
    :cond_d
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown object type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 11

    .line 1062
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1063
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    .line 1064
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    const-string p1, "{}"

    .line 1065
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    .line 1067
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1068
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v6

    :goto_0
    if-eqz v1, :cond_1

    const-string v7, "{\n"

    goto :goto_1

    :cond_1
    const-string v7, "{ "

    .line 1071
    :goto_1
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1073
    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v7, :cond_7

    if-eqz v1, :cond_2

    .line 1074
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1075
    :cond_2
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v8, ": "

    .line 1076
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v8, p3, 0x1

    .line 1077
    invoke-direct {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_3

    .line 1078
    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_4

    :cond_3
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_4

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_4
    if-eqz v1, :cond_5

    const/16 v8, 0xa

    goto :goto_3

    :cond_5
    const/16 v8, 0x20

    .line 1079
    :goto_3
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v1, :cond_6

    .line 1080
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_6

    .line 1081
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 1073
    :cond_6
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    sub-int/2addr p3, v5

    .line 1088
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_8
    const/16 p1, 0x7d

    .line 1089
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    .line 1091
    :cond_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1092
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_a

    const-string p1, "[]"

    .line 1093
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    .line 1095
    :cond_a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1096
    iget-boolean v6, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v6, :cond_c

    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v6, 0x1

    .line 1097
    :goto_5
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v7

    :goto_6
    if-eqz v1, :cond_d

    const-string v8, "[\n"

    goto :goto_7

    :cond_d
    const-string v8, "[ "

    .line 1100
    :goto_7
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1101
    iget-object v8, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_8
    if-eqz v8, :cond_13

    if-eqz v1, :cond_e

    .line 1102
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_e
    add-int/lit8 v9, p3, 0x1

    .line 1103
    invoke-direct {p0, v8, p2, v9, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_f

    .line 1104
    sget-object v9, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v9, :cond_10

    :cond_f
    iget-object v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v9, :cond_10

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_10
    if-eqz v1, :cond_11

    const/16 v9, 0xa

    goto :goto_9

    :cond_11
    const/16 v9, 0x20

    .line 1105
    :goto_9
    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v6, :cond_12

    if-nez v1, :cond_12

    .line 1106
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v7

    iget v10, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v9, v10, :cond_12

    .line 1107
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    goto :goto_6

    .line 1101
    :cond_12
    iget-object v8, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_8

    :cond_13
    if-eqz v1, :cond_14

    sub-int/2addr p3, v5

    .line 1114
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_14
    const/16 p1, 0x5d

    .line 1115
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1117
    :cond_15
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 1118
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1119
    :cond_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 1120
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p3

    .line 1121
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_17

    move-wide p3, v0

    .line 1122
    :cond_17
    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1123
    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_19

    .line 1124
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1125
    :cond_19
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 1126
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1127
    :cond_1a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_1b

    const-string p1, "null"

    .line 1128
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_a
    return-void

    .line 1130
    :cond_1b
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p2

    :goto_c
    goto :goto_b
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1143
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_a

    .line 1144
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    const-string p1, "{}"

    .line 1145
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_8

    .line 1147
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v6, 0x6

    if-le v1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    const-string v6, "{\n"

    goto :goto_2

    :cond_3
    const-string v6, "{ "

    .line 1148
    :goto_2
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1150
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_3
    if-eqz p1, :cond_8

    if-eqz v1, :cond_4

    .line 1151
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1152
    :cond_4
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v6, ": "

    .line 1153
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    add-int/lit8 v6, p3, 0x1

    .line 1154
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_5

    .line 1155
    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v6, :cond_6

    :cond_5
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v6, :cond_6

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_6
    if-eqz v1, :cond_7

    const/16 v6, 0xa

    goto :goto_4

    :cond_7
    const/16 v6, 0x20

    .line 1156
    :goto_4
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1150
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    sub-int/2addr p3, v5

    .line 1158
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    :cond_9
    const/16 p1, 0x7d

    .line 1159
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto/16 :goto_8

    .line 1161
    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1162
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_b

    const-string p1, "[]"

    .line 1163
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_8

    .line 1165
    :cond_b
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_c

    const-string v6, "[\n"

    goto :goto_5

    :cond_c
    const-string v6, "[ "

    .line 1166
    :goto_5
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1168
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_6
    if-eqz p1, :cond_11

    if-eqz v1, :cond_d

    .line 1169
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    :cond_d
    add-int/lit8 v6, p3, 0x1

    .line 1170
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_e

    .line 1171
    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v6, :cond_f

    :cond_e
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v6, :cond_f

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_f
    if-eqz v1, :cond_10

    const/16 v6, 0xa

    goto :goto_7

    :cond_10
    const/16 v6, 0x20

    .line 1172
    :goto_7
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1168
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_6

    :cond_11
    if-eqz v1, :cond_12

    sub-int/2addr p3, v5

    .line 1174
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    :cond_12
    const/16 p1, 0x5d

    .line 1175
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_8

    .line 1177
    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1178
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1179
    :cond_14
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 1180
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p3

    .line 1181
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_15

    move-wide p3, v0

    .line 1182
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1183
    :cond_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_17

    .line 1184
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1185
    :cond_17
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 1186
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1187
    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_19

    const-string p1, "null"

    .line 1188
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :goto_8
    return-void

    .line 1190
    :cond_19
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p2

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    .line 890
    iput-object p0, p1, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 891
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 892
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_0

    .line 894
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-void

    .line 897
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1

    .line 898
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 899
    iput-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 884
    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 885
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->addChild(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void

    .line 883
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asBoolean()Z
    .locals 8

    .line 267
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 275
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 271
    :cond_4
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public asBooleanArray()[Z
    .locals 11

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 480
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Z

    .line 482
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 484
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 495
    iget-wide v9, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v4, v9, v7

    if-eqz v4, :cond_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 498
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_2
    iget-wide v9, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v4, v9, v7

    if-nez v4, :cond_0

    goto :goto_1

    .line 489
    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-nez v4, :cond_0

    goto :goto_1

    .line 486
    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 500
    :goto_2
    aput-boolean v4, v0, v3

    .line 482
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    .line 479
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public asByte()B
    .locals 6

    .line 283
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 291
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0

    .line 287
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public asByteArray()[B
    .locals 10

    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 509
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [B

    .line 511
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 513
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 524
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 527
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_1

    .line 518
    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    :goto_1
    int-to-byte v4, v4

    goto :goto_2

    .line 515
    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    .line 529
    :goto_2
    aput-byte v4, v0, v3

    .line 511
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    .line 508
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public asChar()C
    .locals 7

    .line 315
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 323
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    int-to-char v0, v1

    return v0

    .line 319
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    return v2
.end method

.method public asCharArray()[C
    .locals 10

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_7

    .line 567
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [C

    .line 569
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 571
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 582
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_3

    .line 585
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_2

    .line 576
    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    :goto_2
    int-to-char v4, v4

    goto :goto_3

    .line 573
    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 587
    :goto_3
    aput-char v4, v0, v3

    .line 569
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_6
    return-object v0

    .line 566
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public asDouble()D
    .locals 5

    .line 219
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 227
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v0, v0

    return-wide v0

    .line 223
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    return-wide v0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDoubleArray()[D
    .locals 9

    .line 392
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 395
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    .line 397
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 408
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to double: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_2
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v5, v5

    goto :goto_1

    .line 402
    :cond_3
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    goto :goto_1

    .line 399
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 413
    :goto_1
    aput-wide v5, v0, v1

    .line 395
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    return-object v0

    .line 392
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asFloat()F
    .locals 5

    .line 203
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 211
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v0, v0

    return v0

    .line 207
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v0, v0

    return v0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public asFloatArray()[F
    .locals 9

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 364
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    .line 368
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 379
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to float: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_2
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v3, v5

    goto :goto_1

    .line 373
    :cond_3
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v3, v5

    goto :goto_1

    .line 370
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 384
    :goto_1
    aput v3, v0, v1

    .line 366
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    return-object v0

    .line 363
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asInt()I
    .locals 6

    .line 251
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 259
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    return v1

    .line 255
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    return v0

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public asIntArray()[I
    .locals 10

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 451
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [I

    .line 453
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 455
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 466
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_1

    .line 460
    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    goto :goto_1

    .line 457
    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 471
    :goto_1
    aput v4, v0, v3

    .line 453
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    .line 450
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asLong()J
    .locals 5

    .line 235
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 243
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    return-wide v2

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    return-wide v0

    .line 239
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v0, v0

    return-wide v0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLongArray()[J
    .locals 9

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 424
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_5

    .line 426
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 437
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    const-wide/16 v7, 0x1

    goto :goto_1

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to long: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    iget-wide v7, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    goto :goto_1

    .line 431
    :cond_2
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v7, v5

    goto :goto_1

    .line 428
    :cond_3
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 442
    :cond_4
    :goto_1
    aput-wide v7, v0, v1

    .line 424
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    return-object v0

    .line 421
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public asShort()S
    .locals 6

    .line 299
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 307
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    int-to-short v0, v1

    return v0

    .line 303
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public asShortArray()[S
    .locals 10

    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 538
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [S

    .line 540
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 542
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 553
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 556
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_2
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_1

    .line 547
    :cond_3
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    :goto_1
    int-to-short v4, v4

    goto :goto_2

    .line 544
    :cond_4
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    .line 558
    :goto_2
    aput-short v4, v0, v3

    .line 540
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    return-object v0

    .line 537
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public asString()Ljava/lang/String;
    .locals 5

    .line 185
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-string v0, "true"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    :goto_0
    return-object v0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 9

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_9

    .line 332
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_8

    .line 336
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    const-string v3, "true"

    goto :goto_1

    :cond_2
    const-string v3, "false"

    goto :goto_1

    .line 344
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 341
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 338
    :cond_7
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 355
    :goto_1
    aput-object v3, v0, v1

    .line 334
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_0

    :cond_8
    return-object v0

    .line 331
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public child()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 90
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_1

    .line 99
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 2

    .line 774
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 776
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    .line 775
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    .line 702
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 637
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 638
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getByte(I)B
    .locals 2

    .line 782
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 784
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p1

    return p1

    .line 783
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3

    .line 710
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p1

    return p1

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 1

    .line 643
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 644
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getChar(I)C
    .locals 2

    .line 798
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p1

    return p1

    .line 799
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 3

    .line 726
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p1

    return p1

    .line 727
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 1

    .line 655
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 0

    .line 600
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 601
    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    return-object p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 750
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 752
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    .line 751
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    .line 678
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 619
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 620
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getFloat(I)F
    .locals 2

    .line 742
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p1

    return p1

    .line 743
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3

    .line 670
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p1

    return p1

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 613
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getInt(I)I
    .locals 2

    .line 766
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p1

    return p1

    .line 767
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    .line 694
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p1

    return p1

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 631
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getLong(I)J
    .locals 2

    .line 758
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 760
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    .line 759
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    .line 686
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 625
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getShort(I)S
    .locals 2

    .line 790
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 792
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p1

    return p1

    .line 791
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3

    .line 718
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p1

    return p1

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1

    .line 649
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 650
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 734
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 736
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 735
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 662
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 607
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 608
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 0

    .line 594
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isArray()Z
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDouble()Z
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 172
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLong()Z
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isObject()Z
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValue()Z
    .locals 3

    .line 847
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .locals 1

    .line 1016
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 167
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parent()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 2

    .line 1056
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1057
    invoke-direct {p0, p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1058
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;
    .locals 1

    .line 1049
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1050
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1051
    iput p2, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    .line 1052
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1137
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 p1, 0x0

    .line 1138
    invoke-direct {p0, p0, p2, p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    return-void
.end method

.method public prev()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    .line 136
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 138
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_2

    .line 140
    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 143
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 145
    :cond_2
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    .line 152
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 154
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_2

    .line 156
    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 159
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 161
    :cond_2
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-object p1
.end method

.method public require(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 116
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public set(DLjava/lang/String;)V
    .locals 0

    .line 939
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long p1, p1

    .line 940
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 941
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 942
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(JLjava/lang/String;)V
    .locals 0

    .line 947
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double p1, p1

    .line 948
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 949
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 950
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 934
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 954
    :goto_0
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 955
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public setPrev(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public setType(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 809
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void

    .line 808
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;
    .locals 2

    .line 959
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 960
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 961
    invoke-direct {p0, p0, v0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 962
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1020
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1021
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()Ljava/lang/String;
    .locals 4

    .line 1026
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "[]"

    if-nez v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v2, :cond_0

    return-object v1

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_1

    const-string v0, "{}"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    .line 1032
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    .line 1035
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    if-eqz v2, :cond_6

    if-ne v2, p0, :cond_3

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1035
    :cond_3
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1044
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
