.class final Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field static final EXCEED_POINTS:[J


# instance fields
.field final field:Lj$/time/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field private final signStyle:I

.field final subsequentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Lj$/time/temporal/TemporalField;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iput p3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iput p4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    const/4 p1, 0x0

    iput p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    return-void
.end method

.method protected constructor <init>(Lj$/time/temporal/TemporalField;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iput p2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iput p3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iput p4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    iput p5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    return-void
.end method

.method static synthetic access$000(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)I
    .locals 0

    iget p0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    return p0
.end method


# virtual methods
.method public final format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 10

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object p1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "9223372036854775808"

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v6, " cannot be printed as the value "

    const-string v7, "Field "

    if-gt v4, v5, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x0

    const/4 p1, 0x2

    const/4 v8, 0x1

    cmp-long v9, v2, v4

    sget-object v4, Lj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    invoke-static {v5}, Lj$/time/format/SignStyle$EnumUnboxingLocalUtility;->ordinal(I)I

    move-result v5

    if-ltz v9, :cond_4

    aget v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v8, :cond_2

    if-eq v4, p1, :cond_3

    goto :goto_1

    :cond_2
    iget p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v4, 0x13

    if-ge p1, v4, :cond_7

    sget-object v4, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    aget-wide v6, v4, p1

    cmp-long p1, v2, v6

    if-ltz p1, :cond_7

    :cond_3
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    aget v4, v4, v5

    if-eq v4, v8, :cond_6

    if-eq v4, p1, :cond_6

    const/4 p1, 0x3

    if-eq v4, p1, :cond_6

    const/4 p1, 0x4

    if-eq v4, p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lj$/time/DateTimeException;

    .line 1
    invoke-static {v7}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " cannot be negative according to the SignStyle"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 p1, 0x2d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    iget p1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_8

    const/16 p1, 0x30

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v8

    :cond_9
    new-instance p1, Lj$/time/DateTimeException;

    .line 3
    invoke-static {v7}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " exceeds the maximum print width of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, "Value("

    if-ne v0, v1, :cond_0

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_0

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    if-ne v4, v1, :cond_0

    .line 1
    invoke-static {v3}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v4, ","

    if-ne v0, v1, :cond_1

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {v3}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v3}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    invoke-static {v1}, Lj$/time/format/SignStyle$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 8

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget v6, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIII)V

    return-object v0
.end method

.method final withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 7

    new-instance v6, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:I

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIII)V

    return-object v6
.end method
