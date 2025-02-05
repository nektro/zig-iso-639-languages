const std = @import("std");
const languages = @import("iso-639-languages");

test {
    try std.testing.expectEqualStrings("en", @tagName(languages.Alpha2Code.en));
    try std.testing.expectEqualStrings("zh", @tagName(languages.Alpha2Code.zh));
}
test {
    try std.testing.expectEqualStrings("eng", @tagName(languages.Alpha3Code.eng));
    try std.testing.expectEqualStrings("chi", @tagName(languages.Alpha3Code.chi));
}
