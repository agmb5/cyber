.class final Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final field:Lj$/time/temporal/TemporalField;

.field private volatile numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Lj$/time/format/DateTimeTextProvider;

.field private final textStyle:Lj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Lj$/time/format/DateTimeTextProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    iput-object p3, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    return-void
.end method


# virtual methods
.method public final format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/Chronology;

    if-eqz v1, :cond_4

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    .line 1
    instance-of v1, v4, Lj$/time/temporal/ChronoField;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_0
    check-cast v3, Lj$/time/format/DateTimeFormatterBuilder$1;

    .line 2
    iget-object v1, v3, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, v5, v6, v0}, Lj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3
    :cond_4
    :goto_1
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Lj$/time/format/DateTimeTextProvider;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    check-cast v1, Lj$/time/format/DateTimeFormatterBuilder$1;

    .line 4
    iget-object v1, v1, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, v2, v3, v0}, Lj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_5

    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    const/16 v3, 0x13

    invoke-direct {v0, v2, v1, v3, v1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;III)V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    :cond_5
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 6
    invoke-virtual {v0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v1, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {v3}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v3}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
